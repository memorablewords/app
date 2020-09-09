<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  export let items = [];
</script>

<style>
  .empty {
    padding: calc(3 * var(--app-padding));
  }

  ul {
    padding: 1px 0 0;
    margin: 0;
    list-style: none;
    display: relative;
  }

  li {
    margin-top: -1px;
    border: 1px solid #ddd;
    border-width: 1px 0;
    box-sizing: border-box;
    padding: var(--app-padding) calc(3 * var(--app-padding));
  }

  .stack {
    padding: 12px 0;
  }

  .h {
    display: flex;
    align-items: baseline;
  }
  .h > *:last-child {
    margin-left: auto;
    text-align: right;
  }
  .h > *:first-child {
    flex: min-content;
    padding-right: var(--app-padding);
  }
</style>

{#if items.length === 0}
  <div class="empty">
    <Text element="p">
      {@html $_('dashboard_empty_state')}
    </Text>
  </div>
{:else}
  <ul>
    {#each items as item}
      <li lang={item.lang}>
        <div class="stack h">
          <div class="title">
            <Text display="header">{item.title}</Text>
          </div>
          <div>
            <Text>
              <small>
                {$_('list_word_count', { values: { n: item.wordCount } })}
              </small>
            </Text>
          </div>
        </div>
        <div class="stack">
          <Text dimmed>{item.description}</Text>
        </div>
      </li>
    {/each}
  </ul>
{/if}
