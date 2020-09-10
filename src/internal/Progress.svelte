<script>
  import { Text } from "memorablewords-svelte-components";

  export let total = 0;
  export let pending = 0;

  $: progress = (total * 100) / pending;
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
  <progress max={total} value={total - pending} />

  <div class="count">
    <Text>
      <small>{total - pending} / {total}</small>
    </Text>
  </div>
</div>
