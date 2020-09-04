<script>
  import { _ } from "svelte-i18n";
  import { darkMode, page, user } from "./stores";
  import { dispatch } from "./app";
  import { GUIDELINES_PAGE } from "./pages.js";
  import { validUser } from "./user";
  import {
    Button,
    Icon,
    Spacer,
    Text,
    TextInput
  } from "memorablewords-svelte-components";

  let username = $user && $user.username;
  let attribution = $user && $user.attribution;
  let customAttributionInStorage =
    $user && $user.username !== $user.attribution;
  let customAttribution = customAttributionInStorage;
  let valid = false;

  $: attribution = customAttribution ? attribution : username;
  $: currentUser = { username: username, attribution: attribution };
  $: valid = validUser(currentUser);

  const setAttribution = event => {
    attribution = event.target.value;
    customAttribution = true;
  };

  $: buttonText =
    $user && $user.username === currentUser.username
      ? $_("signin_button_text_already_signed_in")
      : $_("signin_button_text");
  $: buttonTitle =
    $user && $user.username === currentUser.username
      ? $_("signin_button_title_already_signed_in")
      : $_("signin_button_title");
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
    padding: 0 1.5rem;
  }

  main {
    align-items: center;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: space-evenly;
    padding: 0;
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
  <header />

  <main>
    <form>
      <TextInput
        id="username"
        label={$_('signin_form_username_label')}
        hint={$_('signin_form_username_hint')}
        placeholder={$_('signin_form_username_placeholder')}
        bind:value={username}
        required />

      <TextInput
        id="attribution"
        label={$_('signin_form_attribution_label')}
        hint={$_('signin_form_attribution_hint')}
        placeholder={$_('signin_form_attribution_placeholder')}
        bind:value={attribution}
        oninput={setAttribution} />

      <Button
        type="submit"
        title={buttonTitle}
        onclick={() => {
          if (valid) {
            dispatch({ type: 'SET_USER', value: currentUser });
            dispatch({ type: 'VIEW_PAGE', value: GUIDELINES_PAGE });
          }
        }}
        disabled={!valid}
        relaxed>
        <Text>{buttonText}</Text>
      </Button>
    </form>
  </main>

  <footer>
    <Text>
      <small>
        {@html $_('purpose_reminder')}
      </small>
    </Text>
  </footer>
</section>
