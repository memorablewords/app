<script>
  import { dispatch } from "./app";
  import { uploadPreferencesOpen, userPreferencesOpen } from "./stores";
  import Header from "./Header.svelte";
  import Lists from "./Lists.svelte";
  import UploadPreferencesToggleAlt from "./UploadPreferencesToggleAlt.svelte";
  import UserPreferences from "./UserPreferences.svelte";

  export let lists = [];
</script>

<style>
  section {
    background-color: var(--second-color);
    color: var(--app-primary-color);
    align-items: flex-start;
    box-sizing: border-box;
    display: flex;
    flex-direction: column;
    min-height: 100%;
    padding: var(--app-padding);
    justify-content: start;
  }

  main {
    height: 100%;
    width: 100%;
  }
</style>

<section>
  <Header />
  <main>
    <Lists {lists} />
  </main>
</section>
