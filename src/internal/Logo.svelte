<script>
  import { Icon } from "memorablewords-svelte-components";
</script>

<style>
  div {
    --lateral-offset: 10px;
    align-items: center;
    display: flex;
    justify-content: center;
    padding: 0 var(--lateral-offset) 0 0;
    position: relative;
  }

  div > div {
    margin-left: calc(-1 * var(--lateral-offset));
    padding: 0;
  }

  h1 {
    font-size: 16px;
    font-weight: 500;
    letter-spacing: 0.075em;
    line-height: 22px;
    margin: 0;
    padding: 0 0 2px 32px;
    position: absolute;
  }

  h1 span {
    display: block;
  }
</style>

<div>
  <div>
    <Icon type="memorablewords-2" size="128" />
  </div>
  <h1 class="logo">
    <span>Memorable</span>
    <span>Words</span>
  </h1>
</div>
