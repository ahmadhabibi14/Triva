<script lang="ts">
  import { fade } from "svelte/transition";
</script>

<Head
  title="Triva | Home"
  path="/"
/>

<main transition:fade={{ delay: 50, duration: 100 }}>
  <div class="flex flex-col gap-8 mt-10 md:mt-11 w-full md:w-9/12 mx-auto md:px-0 px-5">
    <h1>Hello world</h1>
  </div>
</main>