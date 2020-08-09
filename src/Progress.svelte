<script>
  export let total = 100;
  export let value = 0;
  export let color = "var(--app-primary-color)";
  export let size = "4px";
  let percent = (value * 100) / total;
</script>

<style>
  .total {
    position: relative;
  }

  .value {
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    background-image: repeating-linear-gradient(
      45deg,
      transparent,
      transparent 4px,
      rgba(255, 255, 255, 0.5) 4px,
      rgba(255, 255, 255, 0.5) 8px
    );
  }
</style>

<div class="total" style="height:{size};">
  <div class="value" style="width:{percent}%;background-color:{color}" />
</div>
