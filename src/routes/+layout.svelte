<script lang="ts">
	import "../app.css";
	import "@fontsource/caprasimo";
	import "@fontsource-variable/outfit";

	let { children } = $props();
</script>

<div class="bg-stone-950 text-stone-50 h-screen w-full top-0 bottom-0 left-0 right-0">
	<div class="">
		{@render children()}
	</div>
</div>