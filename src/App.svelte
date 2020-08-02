<script>
  import Review from "./Review.svelte";
  import DarkModeToggle from "./DarkModeToggle.svelte";
  import HandSideModeToggle from "./HandSideModeToggle.svelte";
  import ThanksMessageToggle from "./ThanksMessageToggle.svelte";
  import ThanksMessage from "./ThanksMessage.svelte";
  import Grid from "./Grid.svelte";
  import Icon from "./Icon.svelte";
  import IconTextButton from "./IconTextButton.svelte";
  import {
    darkMode,
    handSideMode,
    thanksMessageVisible,
    contributionPresent,
    page
  } from "./stores";
  import { dispatch, DECISION_YES, DECISION_NO, DECISION_REJECT } from "./app";
  import { DASHBOARD_PAGE, REVIEW_PAGE } from "./pages.js";
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

<Grid dark={$darkMode}>
  <div class="slot" slot="header">
    <IconTextButton
      type="memorablewords"
      text="Memorable Words"
      title="Home"
      onclick={() => dispatch({ type: 'VIEW_PAGE', value: REVIEW_PAGE })} />
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
      <HandSideModeToggle
        enabled={$handSideMode}
        onclick={() => dispatch({ type: 'TOGGLE_HAND_SIDE_MODE' })} />
    </div>
  </div>
  <div class="slot" slot="main">

    {#if $page === REVIEW_PAGE}
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
