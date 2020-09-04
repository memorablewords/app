<script>
  import { _ } from "svelte-i18n";
  import { Button, Text } from "memorablewords-svelte-components";
  import { dispatch } from "./app";
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
  <header />
  <main>
    <Text element="p">
      {@html $_('guidelines_placeholder')}
    </Text>
    <Button
      title={$_('signout_button_title')}
      onclick={() => {
        dispatch({ type: 'UNSET_USER' });
      }}
      relaxed>
      <Text>{$_('signout_button_text')}</Text>
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
