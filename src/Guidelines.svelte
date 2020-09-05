<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import { darkMode, user, userPreferencesOpen } from "./stores";
  import { dispatch } from "./app";
  import { WELCOME_PAGE } from "./pages";
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
    align-items: center;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: space-evenly;
    padding: 0 calc(3 * var(--app-padding));
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
        <Text>Memorable&nbsp;Words</Text>
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
      <div class="push">
        {#if $userPreferencesOpen}
          <Button
            title={$_('user_preferences_toggle_button_open_title')}
            onclick={() => {
              dispatch({ type: 'TOGGLE_USER_PREFERENCES' });
            }}>
            <Icon type="user-full" size={24} />
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
    <Text element="p">
      {@html $_('guidelines_placeholder')}
    </Text>
    <Button
      title={$_('signout_button_title')}
      onclick={() => {
        dispatch({ type: 'UNSET_USER' });
      }}
      relaxed>
      <Text>{$_('signout_button_text')}</Text>
    </Button>
  </main>

  <footer>
    <Text>
      <small>
        {@html $_('purpose_reminder')}
      </small>
    </Text>
  </footer>
</section>
