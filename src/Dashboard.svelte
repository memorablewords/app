<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import { darkMode, user, userPreferencesOpen } from "./stores";
  import { dispatch } from "./app";
  import { GUIDELINES_PAGE, WELCOME_PAGE } from "./pages";
  import List from "./internal/List.svelte";
  import contributors from "./data/contributors.json";
  import lists from "./data/lists.json";

  $: countributorCount = contributors.filter(u => u.username != $user.username)
    .length;
  $: hidden = !$userPreferencesOpen;
</script>

<style>
  section {
    box-sizing: border-box;
    display: grid;
    grid-template-rows: auto 1fr auto;
    min-height: 100%;
    padding: var(--app-padding);
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
    justify-content: start;
  }

  .contributors {
    padding: calc(6 * var(--app-padding)) calc(3 * var(--app-padding));
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
      onclick={() => {
        dispatch({ type: 'VIEW_PAGE', value: WELCOME_PAGE });
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
        onclick={() => {
          dispatch({ type: 'TOGGLE_DARK_MODE' });
        }}>
        <Icon type="sun" size={24} />
      </Button>
    {:else}
      <Button
        title={$_('dark_mode_toggle_button_light_title')}
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
            onclick={() => {
              dispatch({ type: 'TOGGLE_USER_PREFERENCES' });
            }}>
            <Icon type="x" size={24} />
          </Button>
        {:else}
          <Button
            title={$_('user_preferences_toggle_button_closed_title')}
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
    <div class="contributors">
      <Text>
        {@html $_('contributor_count', { values: { n: countributorCount } })}
      </Text>
    </div>
    <div class="list">
      <List items={lists} />
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
        dispatch({ type: 'UNSET_USER' });
      }}
      relaxed>
      <Text>{$_('signout_button_text')}</Text>
    </Button>
  </aside>
</section>
