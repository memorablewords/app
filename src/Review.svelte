<script>
  import IconTextButton from "./IconTextButton.svelte";
  import Icon from "./Icon.svelte";
  import Word from "./Word.svelte";
  import { dispatch, DECISION_YES, DECISION_NO, DECISION_REJECT } from "./app";

  export let current = undefined;
  export let previous = undefined;
  export let mirror;
</script>

<style>
  section {
    height: 100%;
    display: grid;
    grid-template-areas:
      "previous"
      "current";
    grid-template-rows:
      min-content
      auto;
  }

  .grid {
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
  <div>
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
        fluid
        large
        onclick={() => dispatch({ type: 'DECISION', value: DECISION_YES })} />
    </div>
    <div class="no area">
      <IconTextButton
        type="x"
        text="NO"
        title="Don't use this word"
        fluid
        large
        onclick={() => dispatch({ type: 'DECISION', value: DECISION_NO })} />
    </div>
    <div class="reject area">
      <IconTextButton
        type="trash-2"
        text="No way!"
        title="Reject this word"
        fluid
        large
        onclick={() => dispatch({
            type: 'DECISION',
            value: DECISION_REJECT
          })} />
    </div>
  </div>
</section>
