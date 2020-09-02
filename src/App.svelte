<script>
  import DarkModeToggle from "./DarkModeToggle.svelte";
  import Dashboard from "./Dashboard.svelte";
  import Grid from "./Grid.svelte";
  import HandSideModeToggle from "./HandSideModeToggle.svelte";
  import Header from "./Header.svelte";
  import Icon from "./Icon.svelte";
  import Review from "./Review.svelte";
  import SignIn from "./SignIn.svelte";
  import ThanksMessage from "./ThanksMessage.svelte";
  import ThanksMessageToggle from "./ThanksMessageToggle.svelte";
  import UserPreferences from "./UserPreferences.svelte";
  import Welcome from "./Welcome.svelte";
  import {
    user,
    lists,
    darkMode,
    handSideMode,
    thanksMessageVisible,
    contributionPresent,
    userPreferencesOpen,
    page
  } from "./stores";
  import { dispatch, DECISION_YES, DECISION_NO, DECISION_REJECT } from "./app";
  import {
    WELCOME_PAGE,
    SIGN_IN_PAGE,
    DASHBOARD_PAGE,
    REVIEW_PAGE,
    CONTRIBUTE_PAGE
  } from "./pages.js";
  import { onMount } from "svelte";
  // import { version } from "./version.js";

  onMount(() => {
    dispatch({ type: "INIT" });
  });

  let previousWord = {
    value: "remesa",
    decision: DECISION_YES
  };
  let currentWord = {
    value: "remo"
  };
</script>

<style>
  div {
    background-color: var(--second-color);
    color: var(--app-primary-color);
    height: 100vh;
    position: relative;
  }

  .dialog {
    position: absolute;
    top: 0;
    left: 0;
    background-color: var(--overlay-color);
  }
</style>

<div class={$darkMode ? 'dark' : ''}>
  {#if $page === WELCOME_PAGE}
    <Welcome />
  {:else if $page === SIGN_IN_PAGE}
    <SignIn />
  {:else if $page === DASHBOARD_PAGE}
    <Dashboard lists={$lists} />
    {#if $userPreferencesOpen}
      <div class="dialog">
        <UserPreferences />
      </div>
    {/if}
  {:else if $page === REVIEW_PAGE}
    <Review
      current={currentWord}
      previous={previousWord}
      mirror={$handSideMode} />
  {/if}
</div>
