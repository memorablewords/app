<script>
  import Icon from "./Icon.svelte";
  export let type;
  export let disabled = false;
  export let onclick = () => {};
  export let title;
  export let size = 32;
</script>

<style>
  button {
    box-sizing: border-box;
    align-items: center;
    background-color: var(--second-color);
    border: none;
    color: var(--app-primary-color);
    display: flex;
    height: 100%;
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

  .disabled {
    color: var(--app-neutral-color);
  }

  .disabled:hover,
  .disabled:focus {
    border-bottom: none;
    margin-bottom: 0;
  }
</style>

<button
  class:disabled
  on:click={() => {
    disabled || onclick(disabled);
  }}
  {title}
  tabindex={disabled ? '-1' : '0'}
  aria-disabled={disabled}>
  <Icon illustrative {type} {size} />
</button>
