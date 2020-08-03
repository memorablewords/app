<script>
  import Icon from "./Icon.svelte";

  export let size = 24;
  export let type;
  export let text;
  export let title;
  export let onclick = () => {};
</script>

<style>
  button {
    align-items: center;
    background-color: var(--second-color);
    border: 1px dotted var(--app-primary-color);
    border-radius: 0;
    box-sizing: border-box;
    color: var(--app-primary-color);
    display: flex;
    font-weight: 500;
    height: var(--app-touch-target-size);
    justify-content: center;
    margin: 2rem auto;
    min-width: var(--app-touch-target-size);
    white-space: nowrap;
    padding: 0 var(--app-padding);
  }

  button:hover,
  button:focus {
    border-style: solid;
    border-radius: 0;
  }

  button::-moz-focus-inner {
    border: 0;
  }

  button span {
    padding: 0 0 0.125rem var(--app-padding);
  }

  .icon {
    padding-left: var(--app-padding);
  }
</style>

<button on:click={onclick} {title}>
  <span>{text}</span>
  <div class="icon">
    <Icon illustrative {type} {size} />
  </div>
</button>
