<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import { dispatch } from "./app";
  import { preferredLocale } from "./stores";
  import { SIGN_IN_PAGE } from "./pages";
  import Logo from "./internal/Logo.svelte";
</script>

<style>
  section {
    box-sizing: border-box;
    display: grid;
    grid-template-rows: auto 1fr auto;
    min-height: 100%;
    padding: var(--app-padding);
  }

  header {
    align-items: center;
    display: flex;
    justify-content: start;
    padding: 0 1.5rem;
  }

  .preferences {
    margin-left: auto;
  }

  main {
    align-items: center;
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: space-evenly;
    padding: 0 calc(3 * var(--app-padding));
  }

  footer {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
    height: var(--app-touch-target-size);
  }
  footer small {
    font-style: oblique;
  }
</style>

<section>
  <header>
    <Logo />
    <div class="preferences">
      {#if $preferredLocale === 'en'}
        <Button
          title={$_('locale_button_es_title')}
          onclick={() => dispatch({ type: 'SET_LOCALE', value: 'es' })}
          relaxed>
          <Text>{$_('locale_button_es_text')}</Text>
        </Button>
      {:else}
        <Button
          title={$_('locale_button_en_title')}
          onclick={() => dispatch({ type: 'SET_LOCALE', value: 'en' })}
          relaxed>
          <Text>{$_('locale_button_en_text')}</Text>
        </Button>
      {/if}
    </div>
  </header>
  <main>
    <Text element="p">
      {@html $_('purpose_statement')}
    </Text>
    <Button
      title={$_('start_button_title')}
      onclick={() => dispatch({ type: 'VIEW_PAGE', value: SIGN_IN_PAGE })}
      relaxed>
      <Text>{$_('start_button_text')}</Text>
    </Button>
  </main>

  <footer>
    <Text>
      <small>
        {@html $_('purpose_reminder')}
      </small>
    </Text>
  </footer>
</section>
