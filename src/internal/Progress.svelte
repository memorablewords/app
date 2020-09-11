<script>
  import { Text } from "memorablewords-svelte-components";

  export let total = 0;
  export let reviewed = 0;

  $: progress = (total * 100) / reviewed;
</script>

<style>
  .container {
    display: flex;
    width: 100%;
  }

  progress {
    flex: auto;
    margin-right: var(--app-padding);
    width: 100%;
  }

  .count {
    flex: content;
    margin-left: var(--app-padding);
    text-align: right;
    white-space: nowrap;
  }
</style>

<div class="container">
  <progress max={total} value={reviewed} />

  <div class="count">
    <Text>
      <small>{reviewed} / {total}</small>
    </Text>
  </div>
</div>
