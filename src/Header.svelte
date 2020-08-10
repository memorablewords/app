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
    uploadPreferencesOpen,
    user,
    userPreferencesOpen
  } from "./stores";
  import DarkModeToggle from "./DarkModeToggle.svelte";
  import HandSideModeToggle from "./HandSideModeToggle.svelte";
  import Logo from "./Logo.svelte";
  import ThanksMessage from "./ThanksMessage.svelte";
  import ThanksMessageToggle from "./ThanksMessageToggle.svelte";
  import UserPreferencesToggle from "./UserPreferencesToggle.svelte";
  import UploadPreferencesToggle from "./UploadPreferencesToggle.svelte";
</script>

<style>
  div,
  .controls {
    display: flex;
    justify-content: space-between;
    width: 100%;
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
    {#if $user && $contributionPresent && $page === DASHBOARD_PAGE}
      <ThanksMessageToggle
        enabled={$thanksMessageVisible}
        onclick={() => dispatch({ type: 'TOGGLE_THANKS_MESSAGE' })} />
    {/if}
    {#if $page === REVIEW_PAGE || $page === DASHBOARD_PAGE}
      <UploadPreferencesToggle
        enabled={$uploadPreferencesOpen}
        onclick={() => dispatch({ type: 'SHOW_UPLOAD_PREFERENCES' })} />
    {/if}
    {#if $page === REVIEW_PAGE}
      <HandSideModeToggle
        enabled={$handSideMode}
        onclick={() => dispatch({ type: 'TOGGLE_HAND_SIDE_MODE' })} />
    {/if}
    {#if $user && $page === DASHBOARD_PAGE}
      <UserPreferencesToggle
        enabled={$userPreferencesOpen}
        onclick={() => dispatch({ type: 'SHOW_USER_PREFERENCES' })} />
    {/if}
  </aside>
</div>
