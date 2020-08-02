<script>
  export let dark = false;
  export let withFooter = false;
</script>

<style>
  .grid {
    background-color: var(--second-color);
    color: var(--app-primary-color);
    box-sizing: border-box;
    display: grid;
    grid-template-areas:
      "header side side"
      "main main main"
      "main main main";
    grid-template-columns: min-content auto;
    grid-template-rows:
      var(--app-touch-target-size)
      auto var(--app-touch-target-size);
    height: 100%;
    margin: 0 0;
    padding: var(--app-padding);
  }

  .withFooter {
    grid-template-areas:
      "header side side"
      "main main main"
      "main main main"
      "footer footer footer";
    grid-template-rows:
      var(--app-touch-target-size)
      auto var(--app-touch-target-size)
      calc(var(--app-touch-target-size) / 2);
  }

  .area {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .header {
    grid-area: header;
  }

  .side {
    grid-area: side;
  }

  .footer {
    grid-area: footer;
  }

  .main {
    grid-area: main;
  }
</style>

<div class="grid {dark ? 'dark' : ''}" class:withFooter>
  <header class="header">
    <slot name="header" />
  </header>
  <aside
    title={dark ? 'Dark mode is enabled.' : 'Light mode is enabled.'}
    class="area side">
    <slot name="side" />
  </aside>
  <main class="area main">
    <slot name="main" />
  </main>
  {#if withFooter}
    <aside title="Credits" class="area footer">
      <slot name="footer" />
    </aside>
  {/if}
</div>
