<script>
  import Icon from "./Icon.svelte";

  export let size = 24;
  export let type;
  export let text;
  export let title;
  export let onclick = () => {};
  export let fluid = false;
  export let large = false;
  export let green = false;
  export let red = false;
  export let color = false;
</script>

<style>
  button {
    align-items: center;
    background-color: var(--second-color);
    border-radius: 0;
    border: 1px dotted var(--app-primary-color);
    box-sizing: border-box;
    color: var(--app-primary-color);
    display: flex;
    font-weight: 500;
    height: calc(100% - 4px);
    justify-content: center;
    margin: 0;
    min-width: var(--app-touch-target-size);
    padding: 0 var(--app-padding) 0 0;
    white-space: nowrap;
    width: calc(100% - 4px);
  }

  button:hover,
  button:focus {
    border-style: solid;
    border-radius: 0;
  }

  button::-moz-focus-inner {
    border: 0;
  }

  .color {
    color: var(--second-color);
    background-color: #757575;
  }

  .green {
    background-color: #4c8230;
    border-top-color: #4c8230 !important;
  }

  .red {
    background-color: #d14253;
    border-top-color: #d14253 !important;
  }

  .icon {
    padding-right: var(--app-padding);
  }
</style>

<button on:click={onclick} {title} class:red class:green class:color>
  <div class="icon">
    <Icon illustrative {type} {size} />
  </div>
  {text}
</button>
