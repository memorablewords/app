<script>
  import { Icon, Text } from "memorablewords-svelte-components";
  import Logo from "./internal/Logo.svelte";
</script>

<style>
  section {
    box-sizing: border-box;
    display: grid;
    grid-template-rows: auto 1fr auto;
    min-height: 100%;
    padding: var(--app-padding);
  }

  header {
    align-items: center;
    display: flex;
    justify-content: start;
    padding: 0 1.5rem;
  }

  main {
    align-items: center;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: space-evenly;
    padding: 0 calc(3 * var(--app-padding));
  }

  footer {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
    height: var(--app-touch-target-size);
  }
  footer small {
    font-style: oblique;
  }

  .strong {
    border: 1px solid var(--app-primary-color);
    padding: 0 1rem;
    height: var(--app-touch-target-size);
    display: flex;
    align-items: center;
    justify-content: center;
  }
</style>

<section>
  <header>
    <Logo />
  </header>
  <main>
    <Text element="p">
      Identifying memorable words in your language makes strong passphrases more
      accessible to more people.
    </Text>
    <div class="strong">
      <Text element="p">Coming soon…</Text>
    </div>
  </main>

  <footer>
    <Text>
      <small>A contribution to the public knowledge.</small>
    </Text>
  </footer>
</section>
