<script>
  import { dispatch } from "./app";
  import { uploadPreferencesOpen } from "./stores";
  import Header from "./Header.svelte";
  import Lists from "./Lists.svelte";
  import UploadPreferencesToggleAlt from "./UploadPreferencesToggleAlt.svelte";

  export let dark = false;
  export let lists = [];
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
  }

  .example {
    display: inline-block;
  }

  .button {
    float: right;
    margin: 0.5rem 2rem 1rem 0.5rem;
  }

  ol {
    margin-top: 0;
    margin-bottom: 0;
    padding-top: 2rem;
    padding-bottom: 2.5rem;
    border-bottom: 2px solid currentColor;
  }

  li {
    margin-top: 0.5rem;
  }
</style>

<section class={dark ? 'dark' : ''}>
  <Header />

  <main>
    <ol>
      <li>Pick a list</li>
      <li>Review as many words as you want</li>
      <li class="example">
        <div class="button">
          <UploadPreferencesToggleAlt
            enabled={$uploadPreferencesOpen}
            onclick={() => dispatch({ type: 'SHOW_UPLOAD_PREFERENCES' })} />
        </div>
        Get your contributions ready for sharing using the upload button
      </li>
      <li>Send your contributions and repeat!</li>
    </ol>
    <Lists {lists} />
  </main>

</section>
