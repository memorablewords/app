<script>
  import Icon from "./Icon.svelte";
  export let dark = false;
  export let enabled = false;
  export let onclick = () => {};
</script>

<style>
  button {
    box-sizing: border-box;
    align-items: center;
    background-color: var(--second-color);
    border: none;
    color: var(--app-primary-color);
    display: flex;
    height: var(--app-touch-target-size);
    padding: 0;
    margin: 0;
    min-width: var(--app-touch-target-size);
    justify-content: center;
  }

  button:hover,
  button:focus {
    border-bottom: 1px solid var(--app-primary-color);
    border-top: 1px solid var(--second-color);
    border-radius: 0;
  }

  button::-moz-focus-inner {
    border: 0;
  }

  .enabled,
  button:hover,
  button:focus {
    color: var(--pink-color);
    z-index: 1;
  }
</style>

<button
  on:click={() => {
    enabled = !enabled;
    onclick(enabled);
  }}
  class={dark ? 'dark' : ''}
  class:enabled
  title={enabled ? 'Close thanks message' : 'Open thanks message'}>
  {#if enabled}
    <Icon illustrative type="heart-full" size="24" />
  {:else}
    <Icon illustrative type="heart" size="24" />
  {/if}
</button>
