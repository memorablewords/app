<script>
  import Icon from "./Icon.svelte";

  export let attribution = undefined;
  export let dark = false;
</script>

<style>
  aside {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    line-height: 1.5;
    color: var(--app-primary-color);
    background-color: var(--second-color);
    margin: 6px 8px 8px;
    border-radius: var(--app-border-radius);
    padding: var(--app-touch-target-size) 1rem 1rem;
    border: 2px solid var(--overlay-border-color);
  }
  .attribution {
    display: block;
    padding: 0.5rem;
    white-space: nowrap;
  }

  p {
    margin: 0.5rem 0;
    padding: 0;
  }
  p:first-child {
    margin-top: 1rem;
  }
  p:last-child {
    margin-bottom: 1.5rem;
  }
</style>

<aside class:dark>
  <p>Thank you so much for your time and care!</p>
  <p>
    Your contributions are
    <a href="https://github.com/memorablewords/spanish">attributed</a>
    to:
    <span class="attribution">{attribution}</span>
  </p>
  <p>
    Together, we're making security more accessible to many people. Keep up the
    good work!
  </p>
</aside>
