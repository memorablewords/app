<script>
  import Lists from "./Lists.svelte";
  import Header from "./Header.svelte";

  export let dark = false;
  export let user = undefined;
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
    padding: 2rem 0;
  }
</style>

<section class={dark ? 'dark' : ''}>
  <Header />

  <main>
    <p>{user ? `Welcome @${$user.username}!` : 'Welcome!'}</p>
    <Lists {lists} />
  </main>

</section>
