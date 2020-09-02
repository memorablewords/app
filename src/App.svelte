<script>
  import { darkMode } from "./stores";
  import { dispatch } from "./app";
  import { onMount } from "svelte";
  import Welcome from "./Welcome.svelte";

  onMount(() => {
    dispatch({ type: "INIT" });
  });
</script>

<style>
  div {
    background-color: var(--second-color);
    color: var(--app-primary-color);
    height: 100vh;
    position: relative;
  }
</style>

<div class={$darkMode ? 'dark' : ''}>
  <Welcome />
</div>
