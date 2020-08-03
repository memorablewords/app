<script>
  import IconTextButton from "./IconTextButton.svelte";
  import { dispatch } from "./app";
  import { REVIEW_PAGE } from "./pages.js";

  export let list = undefined;
</script>

<style>
  article {
    display: grid;
    grid-template-areas:
      "title icon"
      "description icon";
    grid-template-columns: auto var(--app-touch-target-size);
    grid-template-rows: auto auto;
    padding: 8px;
    text-align: left;
    border: 1px solid var(--muted-color);
    border-width: 1px 0;
    margin-bottom: -1px;
  }
  h2 {
    margin: 0;
    padding: 0;
    font-size: 1rem;
    font-weight: bold;
    line-height: 1.5rem;
    grid-area: title;
  }
  .description {
    grid-area: description;
    font-size: 0.8rem;
    padding: 0;
    margin: 0;
    line-height: 1.5rem;
    color: var(--muted-color);
  }
  .icon {
    grid-area: icon;
  }
</style>

<article>
  <h2>{list.name}</h2>
  <p class="description">{list.description}</p>
  <div class="icon">
    <IconTextButton
      type="chevron-right"
      text=""
      title="Start review"
      large
      fluid
      onclick={() => dispatch({ type: 'VIEW_PAGE', value: REVIEW_PAGE })} />
  </div>
</article>
