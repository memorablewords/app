<script>
  import { addMessages, init } from "svelte-i18n";
  import { darkMode, page, user } from "./stores";
  import { dispatch } from "./app";
  import { onMount } from "svelte";
  import { GUIDELINES_PAGE, SIGN_IN_PAGE } from "./pages";
  import en from "./lang/en.json";
  import es from "./lang/es.json";
  import SignIn from "./SignIn.svelte";
  import Guidelines from "./Guidelines.svelte";
  import Welcome from "./Welcome.svelte";

  addMessages("en", en);
  addMessages("es", es);
  init({
    initialLocale: "en"
  });

  onMount(() => {
    dispatch({ type: "INIT" });
  });
</script>

<style>
  div {
    background-color: var(--second-color);
    color: var(--app-primary-color);
    height: 100vh;
    position: relative;
  }

  @media screen and (min-width: 480px) {
    div {
      max-width: 380px;
      max-height: 720px;
      margin: 16px auto;
      border-radius: 16px;
      border: 1px solid var(--app-primary-color);
      overflow: scroll;
    }
  }
</style>

<div class={$darkMode ? 'dark' : ''}>
  {#if $page === SIGN_IN_PAGE}
    <SignIn />
  {:else if $user && $page === GUIDELINES_PAGE}
    <Guidelines />
  {:else}
    <Welcome />
  {/if}
</div>
