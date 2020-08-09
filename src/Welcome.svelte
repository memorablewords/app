<script>
  import { dispatch } from "./app";
  import { DASHBOARD_PAGE, SIGN_IN_PAGE } from "./pages.js";
  import { user } from "./stores";
  import CallToActionButton from "./CallToActionButton.svelte";
  import Icon from "./Icon.svelte";

  export let dark = false;
</script>

<style>
  section {
    align-items: flex-start;
    background-color: var(--second-color);
    box-sizing: border-box;
    color: var(--app-primary-color);
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
</style>

<section class={dark ? 'dark' : ''}>
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
    <CallToActionButton
      type="arrow-right"
      text="GET STARTED"
      title="Sign in"
      onclick={() => {
        if ($user) {
          dispatch({ type: 'VIEW_PAGE', value: DASHBOARD_PAGE });
        } else {
          dispatch({ type: 'VIEW_PAGE', value: SIGN_IN_PAGE });
        }
      }} />
  </main>

  <footer>
    <p>
      <small>A contribution to the public knowledge.</small>
    </p>
  </footer>
</section>
