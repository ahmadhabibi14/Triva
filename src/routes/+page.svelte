<script lang="ts">
  import { fade } from "svelte/transition";
</script>

<svelte:head>
  <title>Triva</title>
</svelte:head>

<main transition:fade={{ delay: 50, duration: 100 }}>
  <div class="w-full h-fit flex pt-10 justify-center items-center">
    <h1 class="text-6xl text-lime-400">Triva</h1>
  </div>
</main>