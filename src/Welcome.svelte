<script>
  import Icon from "./Icon.svelte";
</script>

<style>
  section {
    /* background-color: var(--second-color); */
    /* color: var(--app-primary-color); */
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

  h1 {
    font-size: 1rem;
    font-weight: 500;
    letter-spacing: 0.075em;
    line-height: 1.4;
    margin: 0;
    padding: 0 0 0.125rem 2.75rem;
    position: absolute;
  }
  h1 span {
    display: block;
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
    <Icon type="memorablewords-2" size="128" />
    <h1>
      <span>Memorable</span>
      <span>Words</span>
    </h1>
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
