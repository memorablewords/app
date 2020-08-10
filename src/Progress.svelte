<script>
  export let total = 100;
  export let value = 0;
  export let color = "var(--app-primary-color)";
  export let size = "4px";
  export let dotted = false;
  export let diagonal = false;
  export let backwards = false;
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
  }

  /* Patterns credits: https://leaverou.github.io/css3patterns */
  .dotted {
    background-image: radial-gradient(var(--second-color) 35%, transparent 35%),
      radial-gradient(var(--second-color) 35%, transparent 35%);
    background-size: 8px 8px;
    background-position: 0 0, 4px 4px;
  }

  .diagonal {
    background-image: repeating-linear-gradient(
      45deg,
      transparent,
      transparent 2px,
      var(--second-color) 2px,
      var(--second-color) 4px
    );
  }

  .backwards {
    background-image: repeating-linear-gradient(
      -45deg,
      transparent,
      transparent 4px,
      var(--second-color) 4px,
      var(--second-color) 8px
    );
  }
</style>

<div class="total" style="height:{size};">
  <div
    class="value"
    style="width:{percent}%;background-color:{color}"
    class:dotted
    class:diagonal
    class:backwards />
</div>
