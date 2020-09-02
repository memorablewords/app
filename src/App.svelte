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

  @media screen and (min-width: 480px) {
    div {
      max-width: 380px;
      max-height: 720px;
      margin: 16px auto;
      border-radius: 16px;
      border: 1px solid var(--app-primary-color);
    }
  }
</style>

<div class={$darkMode ? 'dark' : ''}>
  <Welcome />
</div>
