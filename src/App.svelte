<script>
  import DarkModeToggle from "./DarkModeToggle.svelte";
  import Dashboard from "./Dashboard.svelte";
  import Grid from "./Grid.svelte";
  import HandSideModeToggle from "./HandSideModeToggle.svelte";
  import Header from "./Header.svelte";
  import Icon from "./Icon.svelte";
  import IconTextButton from "./IconTextButton.svelte";
  import Review from "./Review.svelte";
  import SignIn from "./SignIn.svelte";
  import ThanksMessage from "./ThanksMessage.svelte";
  import ThanksMessageToggle from "./ThanksMessageToggle.svelte";
  import Welcome from "./Welcome.svelte";
  import {
    user,
    lists,
    darkMode,
    handSideMode,
    thanksMessageVisible,
    contributionPresent,
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
  // import { onMount } from "svelte";
  // import { version } from "./version.js";

  // onMount(() => {
  //   // dispatch({ type: "INIT" });
  // });
  let previousWord = {
    value: "remesa",
    decision: DECISION_YES
  };
  let currentWord = {
    value: "remo"
  };
</script>

<style>
  .controls {
    align-items: center;
    display: flex;
    justify-content: space-between;
    margin: 0 var(--app-padding);
    grid-area: controls;
  }

  .slot {
    width: 100%;
    height: 100%;
  }

  .thanks {
    position: absolute;
    top: 0;
    left: 0;
    background-color: var(--overlay-color);
    height: 100%;
    width: 100%;
  }

  .credits {
    display: flex;
    align-items: center;
    justify-content: center;
  }
  .credits p {
    font-size: 0.8rem;
    text-align: center;
    padding: 0;
    margin: 0;
  }
</style>

{#if $page === WELCOME_PAGE}
  <Welcome dark={$darkMode} />
{:else if $page === SIGN_IN_PAGE}
  <SignIn dark={$darkMode} />

  {#if $thanksMessageVisible}
    <div class="thanks">
      <ThanksMessage attribution="Shimering Unicorn" dark={$darkMode} />
    </div>
  {/if}
{:else if $page === DASHBOARD_PAGE}

  <Grid dark={$darkMode} withFooter={$page !== REVIEW_PAGE}>
    <div class="slot" slot="header">
      <IconTextButton
        type="memorablewords"
        text="Memorable Words"
        title="Home"
        onclick={() => dispatch({
            type: 'VIEW_PAGE',
            value: DASHBOARD_PAGE
          })} />
    </div>
    <div class="slot" slot="side">
      <div class="controls">
        <DarkModeToggle
          enabled={$darkMode}
          onclick={() => dispatch({ type: 'TOGGLE_DARK_MODE' })} />
        {#if $contributionPresent}
          <ThanksMessageToggle
            enabled={$thanksMessageVisible}
            onclick={() => dispatch({ type: 'TOGGLE_THANKS_MESSAGE' })} />
        {/if}
        {#if $page === REVIEW_PAGE}
          <HandSideModeToggle
            enabled={$handSideMode}
            onclick={() => dispatch({ type: 'TOGGLE_HAND_SIDE_MODE' })} />
        {/if}
      </div>
    </div>
    <div class="slot" slot="main">
      {#if $page === DASHBOARD_PAGE}
        <Dashboard lists={$lists} user={$user} />
      {:else if $page === REVIEW_PAGE}
        <Review
          current={currentWord}
          previous={previousWord}
          mirror={$handSideMode} />
      {/if}
    </div>
    <div class="slot credits" slot="footer">
      <p>
        Made with love by
        <a href="https://github.com/memorablewords">@gonzalo-bulnes</a>
      </p>
    </div>
  </Grid>
  {#if $thanksMessageVisible}
    <div class="thanks">
      <ThanksMessage attribution="Shimering Unicorn" dark={$darkMode} />
    </div>
  {/if}
{:else if $page === REVIEW_PAGE}

  <Grid dark={$darkMode} withFooter={$page !== REVIEW_PAGE}>
    <div class="slot" slot="header">
      <IconTextButton
        type="memorablewords"
        text="Memorable Words"
        title="Home"
        onclick={() => dispatch({
            type: 'VIEW_PAGE',
            value: DASHBOARD_PAGE
          })} />
    </div>
    <div class="slot" slot="side">
      <div class="controls">
        <DarkModeToggle
          enabled={$darkMode}
          onclick={() => dispatch({ type: 'TOGGLE_DARK_MODE' })} />
        {#if $contributionPresent}
          <ThanksMessageToggle
            enabled={$thanksMessageVisible}
            onclick={() => dispatch({ type: 'TOGGLE_THANKS_MESSAGE' })} />
        {/if}
        {#if $page === REVIEW_PAGE}
          <HandSideModeToggle
            enabled={$handSideMode}
            onclick={() => dispatch({ type: 'TOGGLE_HAND_SIDE_MODE' })} />
        {/if}
      </div>
    </div>
    <div class="slot" slot="main">
      {#if $page === DASHBOARD_PAGE}
        <Dashboard lists={$lists} user={$user} />
      {:else if $page === REVIEW_PAGE}
        <Review
          current={currentWord}
          previous={previousWord}
          mirror={$handSideMode} />
      {/if}
    </div>
    <div class="slot credits" slot="footer">
      <p>
        Made with love by
        <a href="https://github.com/memorablewords">@gonzalo-bulnes</a>
      </p>
    </div>
  </Grid>
  {#if $thanksMessageVisible}
    <div class="thanks">
      <ThanksMessage attribution="Shimering Unicorn" dark={$darkMode} />
    </div>
  {/if}
{:else if $page === CONTRIBUTE_PAGE}

  <Grid dark={$darkMode} withFooter={$page !== REVIEW_PAGE}>
    <div class="slot" slot="header">
      <IconTextButton
        type="memorablewords"
        text="Memorable Words"
        title="Home"
        onclick={() => dispatch({
            type: 'VIEW_PAGE',
            value: DASHBOARD_PAGE
          })} />
    </div>
    <div class="slot" slot="side">
      <div class="controls">
        <DarkModeToggle
          enabled={$darkMode}
          onclick={() => dispatch({ type: 'TOGGLE_DARK_MODE' })} />
        {#if $contributionPresent}
          <ThanksMessageToggle
            enabled={$thanksMessageVisible}
            onclick={() => dispatch({ type: 'TOGGLE_THANKS_MESSAGE' })} />
        {/if}
        {#if $page === REVIEW_PAGE}
          <HandSideModeToggle
            enabled={$handSideMode}
            onclick={() => dispatch({ type: 'TOGGLE_HAND_SIDE_MODE' })} />
        {/if}
      </div>
    </div>
    <div class="slot" slot="main">
      {#if $page === DASHBOARD_PAGE}
        <Dashboard lists={$lists} user={$user} />
      {:else if $page === REVIEW_PAGE}
        <Review
          current={currentWord}
          previous={previousWord}
          mirror={$handSideMode} />
      {/if}
    </div>
    <div class="slot credits" slot="footer">
      <p>
        Made with love by
        <a href="https://github.com/memorablewords">@gonzalo-bulnes</a>
      </p>
    </div>
  </Grid>
  {#if $thanksMessageVisible}
    <div class="thanks">
      <ThanksMessage attribution="Shimering Unicorn" dark={$darkMode} />
    </div>
  {/if}
{/if}
