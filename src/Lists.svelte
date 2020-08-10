<script>
  import List from "./List.svelte";
  import { lists } from "./data";
</script>

<style>
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
  }
  p {
    padding: 1.5rem 0 0;
    margin: 0;
    width: 100%;
  }

  .lists {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
</style>

<div class="lists">
  {#if lists.length === 0}
    <p>There are no words to review at the moment.</p>
    <p>
      However, when new lists of words become available for review, they will
      appear here.
    </p>
    <p>Please check again later!</p>
  {:else}
    <ul>
      {#each lists as list, i}
        <li>
          <List {list} />
        </li>
      {/each}
    </ul>
  {/if}
</div>
