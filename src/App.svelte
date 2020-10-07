<script>
  import { addMessages, init } from "svelte-i18n";
  import { darkMode, page, user } from "./stores";
  import {
    DASHBOARD_PAGE,
    GUIDELINES_PAGE,
    REVIEW_PAGE,
    SIGN_IN_PAGE
  } from "./pages";
  import { dispatch } from "./app";
  import { onMount } from "svelte";
  import Dashboard from "./Dashboard.svelte";
  import en from "./lang/en.json";
  import es from "./lang/es.json";
  import Guidelines from "./Guidelines.svelte";
  import Review from "./Review.svelte";
  import SignIn from "./SignIn.svelte";
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
      border-radius: 8px;
      border: 4px solid var(--app-primary-color);
      overflow: scroll;
    }
  }
</style>

<div class={$darkMode ? 'dark' : ''}>
  {#if $page === SIGN_IN_PAGE}
    <SignIn />
  {:else if $user && $page === GUIDELINES_PAGE}
    <Guidelines />
  {:else if $user && $page === DASHBOARD_PAGE}
    <Dashboard />
  {:else if $user && $page === REVIEW_PAGE}
    <Review />
  {:else}
    <Welcome />
  {/if}
</div>
