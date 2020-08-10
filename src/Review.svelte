<script>
  import Header from "./Header.svelte";
  import IconTextButton from "./IconTextButton.svelte";
  import Icon from "./Icon.svelte";
  import Word from "./Word.svelte";
  import { dispatch, DECISION_YES, DECISION_NO, DECISION_REJECT } from "./app";

  export let dark = false;
  export let current = undefined;
  export let previous = undefined;
  export let mirror;
</script>

<style>
  section {
    align-items: flex-start;
    background-color: var(--second-color);
    box-sizing: border-box;
    color: var(--app-primary-color);
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: start;
    padding: var(--app-padding);
  }

  main {
    height: 100%;
    width: 100%;
  }

  .grid {
    height: calc(100% - 2 * var(--app-touch-target-size));
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

  .previous {
    margin-top: var(--app-touch-target-size);
    height: var(--app-touch-target-size);
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

<section class={dark ? 'dark' : ''}>
  <Header />
  <main>
    <div class="previous">
      {#if previous}
        <IconTextButton
          type="arrow-left"
          text="{previous.value}––{previous.decision}"
          title="Back to previous word"
          onclick={() => dispatch({ type: 'PREVIOUS_REVIEW' })} />
      {/if}
    </div>
    <div class="grid" class:mirror>
      <div class="main area">
        {#if current}
          <Word word={current.value} />
        {/if}
      </div>
      <div class="yes area">
        <IconTextButton
          type="check"
          text="YES"
          title="This word is fine"
          onclick={() => dispatch({ type: 'DECISION', value: DECISION_YES })} />
      </div>
      <div class="no area">
        <IconTextButton
          type="x"
          text="NO"
          title="Don't use this word"
          onclick={() => dispatch({ type: 'DECISION', value: DECISION_NO })} />
      </div>
      <div class="reject area">
        <IconTextButton
          type="trash-2"
          text="No way!"
          title="Reject this word"
          onclick={() => dispatch({
              type: 'DECISION',
              value: DECISION_REJECT
            })} />
      </div>
    </div>
  </main>
</section>
