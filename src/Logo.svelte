<script>
  import Icon from "./Icon.svelte";

  export let size = 24;
  export let onclick = () => {};
</script>

<style>
  button {
    align-items: center;
    background-color: var(--second-color);
    border: none;
    box-sizing: border-box;
    color: var(--app-primary-color);
    display: flex;
    font-weight: 500;
    height: var(--app-touch-target-size);
    justify-content: center;
    letter-spacing: 0.05em;
    margin: 0;
    min-width: var(--app-touch-target-size);
    padding: 0 var(--app-padding) 0 0;
    white-space: nowrap;
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

  .icon {
    padding-right: var(--app-padding);
  }
</style>

<button on:click={onclick} title="Memorable Words">
  <div class="icon">
    <Icon illustrative type="memorablewords" {size} />
  </div>
  Memorable Words
</button>
