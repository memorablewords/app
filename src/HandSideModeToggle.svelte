<script>
  import Icon from "./Icon.svelte";
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
    padding-right: var(--app-padding);
    padding-left: 0;
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

  button.enabled {
    padding-right: 0;
    padding-left: var(--app-padding);
  }
</style>

<button
  on:click={() => {
    enabled = !enabled;
    onclick(enabled);
  }}
  class:enabled
  title={enabled ? 'Enable right-handed mode' : 'Enable left-handed mode'}>
  {#if enabled}
    Flip
    <Icon illustrative type="chevron-right" size="24" />
  {:else}
    <Icon illustrative type="chevron-left" size="24" />
    Flip
  {/if}
</button>
