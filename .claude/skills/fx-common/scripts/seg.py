import sys, os, subprocess, numpy as np, onnxruntime as ort
from PIL import Image
model, video, out = sys.argv[1:4]
os.makedirs(out, exist_ok=True)
W, H = 1080, 1920
sess = ort.InferenceSession(model, providers=['CPUExecutionProvider'])
inp = sess.get_inputs()[0].name
p = subprocess.Popen(['ffmpeg','-loglevel','error','-i',video,'-f','rawvideo','-pix_fmt','rgb24','-'], stdout=subprocess.PIPE)
mean = np.array([0.485,0.456,0.406]); std = np.array([0.229,0.224,0.225])
i = 0
while True:
    buf = p.stdout.read(W*H*3)
    if len(buf) < W*H*3: break
    img = Image.frombuffer('RGB',(W,H),buf).resize((320,320), Image.BILINEAR)
    a = np.asarray(img, dtype=np.float32)/255.0
    a = (a/ a.max() - mean)/std if a.max()>0 else a
    x = a.transpose(2,0,1)[None].astype(np.float32)
    pred = sess.run(None, {inp: x})[0][0,0]
    pred = (pred - pred.min())/(pred.max()-pred.min()+1e-8)
    Image.fromarray((pred*255).astype(np.uint8)).resize((W,H), Image.BILINEAR).save(f'{out}/{i:04d}.png')
    i += 1
    if i % 100 == 0: print(i, flush=True)
print('done', i)
