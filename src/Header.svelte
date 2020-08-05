<script>
  import { dispatch } from "./app";
  import {
    WELCOME_PAGE,
    SIGN_IN_PAGE,
    DASHBOARD_PAGE,
    REVIEW_PAGE,
    CONTRIBUTE_PAGE
  } from "./pages.js";
  import {
    contributionPresent,
    darkMode,
    handSideMode,
    page,
    thanksMessageVisible,
    user
  } from "./stores";
  import DarkModeToggle from "./DarkModeToggle.svelte";
  import HandSideModeToggle from "./HandSideModeToggle.svelte";
  import IconTextButton from "./IconTextButton.svelte";
  import Logo from "./Logo.svelte";
  import ThanksMessage from "./ThanksMessage.svelte";
  import ThanksMessageToggle from "./ThanksMessageToggle.svelte";
</script>

<style>
  div,
  .controls {
    display: flex;
  }
</style>

<div>
  <header>
    <Logo
      onclick={() => dispatch({ type: 'VIEW_PAGE', value: DASHBOARD_PAGE })} />
  </header>
  <aside class="controls">
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
  </aside>
</div>
