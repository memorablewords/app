<script>
  import Progress from "./Progress.svelte";

  export let acceptedContributions = 41;
  export let pendingContributions = 23;
  export let reviewed = 72;
  export let total = 100;
  export let size = "4px";
</script>

<style>
  .summary {
    position: relative;
    width: 100%;
  }

  .metric {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
  }
</style>

<div class="summary" style="height:{size}">
  <div class="metric">
    <Progress {total} {size} value={total} color="var(--muted-color)" />
  </div>
  <div class="metric">
    <Progress {total} {size} value={reviewed} color="dodgerblue" />
  </div>
  <div class="metric">
    <Progress
      {total}
      {size}
      value={acceptedContributions + pendingContributions}
      color="gold" />
  </div>
  <div class="metric">
    <Progress {total} {size} value={acceptedContributions} color="limegreen" />
  </div>
</div>
