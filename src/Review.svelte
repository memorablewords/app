<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import { darkMode, user, userPreferencesOpen } from "./stores";
  import { dispatch } from "./app";
  import { REVIEW_PAGE, WELCOME_PAGE } from "./pages";
  import Word from "./internal/Word.svelte";

  $: hidden = !$userPreferencesOpen;
  let mirror = false;
  let current = { lemma: "ayuntamientismo" };
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

  main {
    align-items: flex-start;
    display: flex;
    flex-direction: column;
    justify-content: start;
  }

  .grid {
    height: 100%;
    width: 100%;
    display: grid;
    grid-template-areas:
      "main main"
      "reject no"
      "reject yes";
    grid-template-columns: auto auto;
    grid-template-rows:
      auto
      calc(var(--app-touch-target-size) + 8px)
      calc(var(--app-touch-target-size) + 8px);
  }

  .mirror {
    grid-template-areas:
      "main main"
      "no reject"
      "yes reject";
  }

  .area {
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .main {
    /* background-color: #aaa; */
    grid-area: main;
  }

  .yes {
    /* background-color: #8f8; */
    grid-area: yes;
  }

  .no {
    /* background-color: #888; */
    grid-area: no;
  }

  .reject {
    /* background-color: #f88; */
    grid-area: reject;
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
  </header>

  <main>
    <div class="grid" class:mirror>
      <div class="main area">
        {#if current}
          <Word word={current.lemma} />
        {/if}
      </div>
      <div class="yes area">
        <Button
          type="check"
          title="This word is fine"
          onclick={() => dispatch({ type: 'DECISION', value: 'DECISION_YES' })}>
          <Text>YES</Text>
          <Spacer />
          <Icon type="check" size={24} />
        </Button>
      </div>
      <div class="no area">
        <Button
          title="Don't use this word"
          onclick={() => dispatch({ type: 'DECISION', value: 'DECISION_NO' })}>
          <Text>NO</Text>
          <Spacer />
          <Icon type="x" size={24} />
        </Button>
      </div>
      <div class="reject area">
        <Button
          title="Reject this word"
          onclick={() => dispatch({
              type: 'DECISION',
              value: 'DECISION_REJECT'
            })}>
          <Text>No way!</Text>
          <Spacer />
          <Icon type="trash-2" size={24} />
        </Button>
      </div>
    </div>
  </main>
</section>
