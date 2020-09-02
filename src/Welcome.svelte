<script>
  import { Icon } from "memorablewords-svelte-components";
  import Logo from "./internal/Logo.svelte";
</script>

<style>
  section {
    align-items: flex-start;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: start;
    padding: var(--app-padding);
  }

  header {
    align-items: center;
    display: flex;
    justify-content: center;
    padding: 0 1rem 0 0.75rem;
  }

  main {
    align-items: center;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: space-evenly;
  }

  p {
    font-size: 1rem;
    line-height: 1.5rem;
    margin: 0;
    padding: 1.5rem 1.5rem 0;
  }

  footer,
  footer p {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
  }
  footer p {
    font-style: oblique;
    height: var(--app-touch-target-size);
    line-height: 1.5;
    margin: 0;
    padding: 0;
    text-align: center;
  }

  .strong {
    border: 1px solid var(--app-primary-color);
    padding: 0 1rem;
    height: var(--app-touch-target-size);
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .strong p {
    padding: 0;
  }
</style>

<section>
  <header>
    <Logo />
  </header>
  <main>
    <p>
      Identifying memorable words in your language makes strong passphrases more
      accessible to more people.
    </p>
    <div class="strong">
      <p>Coming soon…</p>
    </div>
  </main>

  <footer>
    <p>
      <small>A contribution to the public knowledge.</small>
    </p>
  </footer>
</section>
