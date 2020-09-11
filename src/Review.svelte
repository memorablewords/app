<script>
  import { _ } from "svelte-i18n";
  import { onMount } from "svelte";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import {
    currentListId,
    darkMode,
    flipMode,
    lists,
    user,
    userPreferencesOpen
  } from "./stores";
  import { asyncDispatch, dispatch } from "./app";
  import { DASHBOARD_PAGE, REVIEW_PAGE } from "./pages";
  import Word from "./internal/Word.svelte";
  import { currentWord } from "./reviews";

  $: hidden = !$userPreferencesOpen;
  $: mirror = $flipMode;

  let loading = true;
  $: word = !loading && currentWord($lists, $currentListId);

  onMount(async () => {
    await asyncDispatch({
      type: "LOAD_LIST",
      value: $currentListId
    });
    loading = false;
  });
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
    margin: 2px 0 0 2px;
  }

  .no {
    /* background-color: #888; */
    grid-area: no;
    margin: 0 0 2px 2px;
  }

  .reject {
    /* background-color: #f88; */
    grid-area: reject;
    margin: 0 2px 0 0;
  }

  .mirror .yes {
    /* background-color: #8f8; */
    grid-area: yes;
    margin: 2px 2px 0 0;
  }

  .mirror .no {
    /* background-color: #888; */
    grid-area: no;
    margin: 0 2px 2px 0;
  }

  .mirror .reject {
    /* background-color: #f88; */
    grid-area: reject;
    margin: 0 0 0 2px;
  }
</style>

<section>
  <header>
    <Button
      title={$_('home_button_title')}
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

    <div class="push">
      {#if $flipMode}
        <Button
          title={$_('flip_mode_toggle_button_left_title')}
          onclick={() => {
            dispatch({ type: 'TOGGLE_HAND_MODE' });
          }}>
          <Icon type="flip" size={24} />
        </Button>
      {:else}
        <Button
          title={$_('flip_mode_toggle_button_right_title')}
          onclick={() => {
            dispatch({ type: 'TOGGLE_HAND_MODE' });
          }}>
          <Icon type="flip-2" size={24} />
        </Button>
      {/if}
    </div>
  </header>

  <main>
    {#if loading}
      <div class="grid">
        <div class="main area">
          <Text element="p">Loading…</Text>
        </div>
      </div>
    {:else if !word}
      <div class="grid">
        <div class="main area">
          <Text element="p">Done!</Text>
        </div>
      </div>
    {:else}
      <div class="grid" class:mirror>
        <div class="main area">
          <Word {word} />
        </div>
        <div class="yes area">
          <Button
            type="check"
            title="This word is fine"
            onclick={() => dispatch({
                type: 'DECISION',
                value: {
                  decision: 'DECISION_YES',
                  word: word,
                  listId: $currentListId
                }
              })}
            blown>
            <Text>YES</Text>
            <Spacer />
            <Icon type="check" size={24} />
          </Button>
        </div>
        <div class="no area">
          <Button
            title="Don't use this word"
            onclick={() => dispatch({
                type: 'DECISION',
                value: {
                  decision: 'DECISION_NO',
                  word: word,
                  listId: $currentListId
                }
              })}
            blown>
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
                value: {
                  decision: 'DECISION_REJECT',
                  word: word,
                  listId: $currentListId
                }
              })}
            blown>
            <Text>No way!</Text>
            <Spacer />
            <Icon type="trash-2" size={24} />
          </Button>
        </div>
      </div>
    {/if}
  </main>
</section>
