<script>
  import Lists from "./Lists.svelte";

  export let user = undefined;
  export let lists = [];
</script>

<style>
  section {
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: start;
    padding-top: 4rem;
  }
</style>

<section>
  <p>{user ? `Welcome @${user.name}!` : 'Welcome!'}</p>

  <Lists {lists} />

</section>
