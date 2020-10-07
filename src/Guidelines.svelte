<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import {
    contributeTakeoverOpen,
    darkMode,
    user,
    userPreferencesOpen
  } from "./stores";
  import { dispatch } from "./app";
  import { DASHBOARD_PAGE } from "./pages";

  $: hidden = !$userPreferencesOpen;
</script>

<style>
  section {
    box-sizing: border-box;
    display: grid;
    grid-template-rows: auto 1fr auto;
    min-height: 100%;
    padding: var(--app-padding);
    background-color: var(--second-color);
    color: var(--app-primary-color);
  }

  header {
    align-items: center;
    display: flex;
    justify-content: start;
  }

  .push {
    margin-left: auto;
  }

  main {
    align-items: flex-start;
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
    padding: calc(3 * var(--app-padding));
  }

  ul {
    list-style: none;
  }

  ul,
  li {
    margin: 0;
    padding: 0;
  }

  .next {
    padding: 32px 0;
  }

  footer {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
    height: var(--app-touch-target-size);
  }
  footer small {
    font-style: oblique;
  }

  .hidden {
    display: none;
  }

  .raise {
    z-index: 1;
  }

  aside {
    align-items: center;
    background-color: var(--second-color);
    box-sizing: border-box;
    display: flex;
    height: calc(100% - calc(2 * var(--app-padding)));
    justify-content: center;
    position: absolute;
    width: calc(100% - calc(2 * var(--app-padding)));
  }
</style>

<section>
  <header>
    <Button
      title={$_('home_button_title')}
      disabled={$contributeTakeoverOpen || $userPreferencesOpen}
      onclick={() => {
        dispatch({ type: 'VIEW_PAGE', value: DASHBOARD_PAGE });
      }}>
      <Icon type="memorablewords" size={24} />
      <Spacer />
      <div class="logo">
        <Text element="h1">Memorable&nbsp;Words</Text>
      </div>
    </Button>
    {#if $darkMode}
      <Button
        title={$_('dark_mode_toggle_button_dark_title')}
        disabled={$contributeTakeoverOpen || $userPreferencesOpen}
        onclick={() => {
          dispatch({ type: 'TOGGLE_DARK_MODE' });
        }}>
        <Icon type="sun" size={24} />
      </Button>
    {:else}
      <Button
        title={$_('dark_mode_toggle_button_light_title')}
        disabled={$contributeTakeoverOpen || $userPreferencesOpen}
        onclick={() => {
          dispatch({ type: 'TOGGLE_DARK_MODE' });
        }}>
        <Icon type="moon" size={24} />
      </Button>
    {/if}

    {#if $user}
      <div class="push raise">
        {#if $userPreferencesOpen}
          <Button
            title={$_('user_preferences_toggle_button_open_title')}
            disabled={$contributeTakeoverOpen}
            onclick={() => {
              dispatch({ type: 'TOGGLE_USER_PREFERENCES' });
            }}>
            <Icon type="x" size={24} />
          </Button>
        {:else}
          <Button
            title={$_('user_preferences_toggle_button_closed_title')}
            disabled={$contributeTakeoverOpen}
            onclick={() => {
              dispatch({ type: 'TOGGLE_USER_PREFERENCES' });
            }}>
            <Icon type="user" size={24} />
          </Button>
        {/if}
      </div>
    {/if}
  </header>

  <main>
    <Text stacked element="h2" display="header">Guidelines</Text>

    <Text stacked element="h2" display="header">
      {@html $_('guidelines_review_outcomes_0_title')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_review_outcomes_1')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_review_outcomes_2')}
    </Text>
    <ul>
      <li>
        <Text stacked>
          {@html $_('guidelines_review_outcomes_3')}
        </Text>
      </li>
      <li>
        <Text stacked>
          {@html $_('guidelines_review_outcomes_4')}
        </Text>
      </li>
      <li>
        <Text stacked>
          {@html $_('guidelines_review_outcomes_5')}
        </Text>
      </li>
    </ul>

    <Text stacked element="h2" display="header">
      {@html $_('guidelines_when_in_doubt_0_title')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_when_in_doubt_1')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_when_in_doubt_2')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_when_in_doubt_3')}
    </Text>

    <Text stacked element="h2" display="header">
      {@html $_('guidelines_words_selection_0_title')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_words_selection_1')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_words_selection_2')}
    </Text>

    <Text stacked element="h2" display="header">
      {@html $_('guidelines_review_process_0_title')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_review_process_1')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_review_process_2')}
    </Text>

    <Text stacked element="h2" display="header">
      {@html $_('guidelines_progress_tracking_0_title')}
    </Text>
    <Text stacked element="p">
      {@html $_('guidelines_progress_tracking_1')}
    </Text>
    <ul>
      <li>
        <Text stacked>
          {@html $_('guidelines_progress_tracking_2')}
        </Text>
      </li>
      <li>
        <Text stacked>
          {@html $_('guidelines_progress_tracking_3')}
        </Text>
      </li>
      <li>
        <Text stacked>
          {@html $_('guidelines_progress_tracking_4')}
        </Text>
      </li>
    </ul>

    <div class="push next">
      <Button
        title={$_('acknowledge_guidelines_button_title')}
        disabled={$contributeTakeoverOpen || $userPreferencesOpen}
        onclick={() => {
          dispatch({ type: 'VIEW_PAGE', value: DASHBOARD_PAGE });
        }}
        relaxed
        border>
        <Text>{$_('acknowledge_guidelines_button_text')}</Text>
      </Button>
    </div>
  </main>

  <footer>
    <Text>
      <small>
        {@html $_('purpose_reminder')}
      </small>
    </Text>
  </footer>

  <aside class:hidden>
    <Button
      title={$_('signout_button_title')}
      onclick={() => {
        dispatch({ type: 'SIGN_OUT' });
      }}
      relaxed
      border>
      <Text>{$_('signout_button_text')}</Text>
    </Button>
  </aside>
</section>
