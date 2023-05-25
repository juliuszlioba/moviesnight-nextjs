/** @type {import('tailwindcss').Config} */

const colors = require('tailwindcss/colors')
const { fontFamily } = require('tailwindcss/defaultTheme')

module.exports = {
	content: [
		'./src/pages/**/*.{js,ts,jsx,tsx,mdx}',
		'./src/components/**/*.{js,ts,jsx,tsx,mdx}',
		'./src/app/**/*.{js,ts,jsx,tsx,mdx}',
	],
	theme: {
		colors: {
			current: 'currentColor',
			transparent: 'transparent',
			black: colors.black,
			white: colors.white,
			gray: colors.neutral,
			fuchsia: colors.fuchsia,
			pink: colors.pink,
			yellow: colors.amber,
			dark_fuschia: '#3d0e41',
			dark_bg_primary: '#131313',
			dark_bg_secondary: '#191919',
			light_bg_primary: '#F5F6F7',
		},
		extend: {
			fontFamily: {
				sans: ['var(--font-quicksand)', ...fontFamily.sans],
			},
			backgroundImage: {
				'gradient-radial': 'radial-gradient(var(--tw-gradient-stops))',
				'gradient-conic':
					'conic-gradient(from 180deg at 50% 50%, var(--tw-gradient-stops))',
			},
		},
	},
	plugins: [require('@tailwindcss/forms')],
}
