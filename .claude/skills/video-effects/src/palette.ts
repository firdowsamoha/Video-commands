// One switch for the accent colour of every effect and Finova scene.
// 'finova' = Finova teal (the Finova promo videos); 'claude' = warm orange (the 21-skill reel).
export const PALETTE: 'finova' | 'claude' = 'claude'

const P = {
	finova: { accent: '#0F766E', accentDeep: '#06302C', accentDark: '#0A4F49', ink: '#0B2F2C', light: '#D0FAE5', bright: '#6EE7B7', soft: '#ECFDF5', overlay: 'rgba(6,48,44,0.9)' },
	claude: { accent: '#D97757', accentDeep: '#262624', accentDark: '#B85C3E', ink: '#1F1E1D', light: '#F5D5C6', bright: '#F0A58A', soft: '#FBF0EB', overlay: 'rgba(31,30,29,0.9)' },
} as const
export const brand = P[PALETTE]
