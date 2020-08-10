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
    border: 1px dashed var(--app-primary-color);
    border-radius: 50%;
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
    border-style: solid;
  }

  button::-moz-focus-inner {
    border: 0;
  }

  .enabled,
  button:hover,
  button:focus {
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
  title={enabled ? 'Close user preferences' : 'Open user preferences'}>
  {#if enabled}
    <Icon illustrative type="x" size="24" />
  {:else}
    <Icon illustrative type="upload" size="24" />
  {/if}
</button>
