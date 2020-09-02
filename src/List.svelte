<script>
  import IconButton from "./IconButton.svelte";
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
    padding: 0 0 0 var(--app-padding);
    text-align: left;
    border: 1px dotted var(--muted-color);
    border-width: 1px 0;
    margin-bottom: -1px;
  }
  h2 {
    margin: 0;
    padding: 0;
    font-size: 1rem;
    font-weight: bold;
    line-height: 3rem;
    grid-area: title;
  }
  .description {
    grid-area: description;
    font-size: 0.8rem;
    padding: 0 0 8px;
    margin: 0;
    line-height: 1.5rem;
    color: var(--muted-color);
  }
  .icon {
    grid-area: icon;
    display: flex;
    align-items: center;
    justify-content: center;
  }
</style>

<article>
  <h2>{list.name}</h2>
  <p class="description">{list.description}</p>
  <div class="icon">
    <IconButton
      type="chevron-right"
      title="Start review"
      onclick={() => dispatch({ type: 'VIEW_PAGE', value: REVIEW_PAGE })} />
  </div>
</article>
