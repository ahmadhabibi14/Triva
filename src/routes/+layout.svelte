<script lang="ts">
	import "../app.css";
	import "@fontsource/caprasimo";
	import "@fontsource-variable/outfit";

	import Navbar from "../components/partials/Navbar.svelte";
	import Footer from "../components/partials/Footer.svelte";

	let { children } = $props();
</script>

<div class="text-zinc-900 top-0 bottom-0 left-0 right-0 h-screen w-screen bg-white max-w-full">
	<div class="h-full w-full flex flex-col gap-1">
		<Navbar />
		<div class="px-0 mx-auto mt-10 mb-11 w-full">
			{@render children()}
		</div>
		<Footer />
	</div>
</div>
