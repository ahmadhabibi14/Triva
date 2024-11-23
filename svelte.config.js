import adapter from "@sveltejs/adapter-node";
import { vitePreprocess } from "@sveltejs/vite-plugin-svelte";

/** @type {import("@sveltejs/kit").Config} */
const config = {
	preprocess: vitePreprocess(),
	kit: {
		adapter: adapter()
	},
	methodOverride: {
		enabled: true,
	},
	alias: {
		"@": "src/*"
	},
	csrf: {
		checkOrigin: false
	},
	csp: {
		directives: {
			"img-src": [
				"*", "self", "http:", "https:", "data:", "blob:"
			],
			"script-src": [
				"*", "self", "http:", "https:", "unsafe-inline"
			]
		}
	}
};

export default config;
