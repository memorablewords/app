<script>
  import { darkMode, page, user } from "./stores";
  import { DASHBOARD_PAGE } from "./pages.js";
  import { dispatch } from "./app";
  import CallToActionButton from "./CallToActionButton.svelte";
  import Header from "./Header.svelte";
  import Icon from "./Icon.svelte";
  import { validUser, isContributor } from "./user";

  export let dark = false;
  let username = $user && $user.username;
  let attribution = $user && $user.attribution;
  let customAttributionInStorage =
    $user && $user.username !== $user.attribution;
  let customAttribution = customAttributionInStorage;
  let valid = false;

  $: attribution = customAttribution ? attribution : username;
  $: currentUser = { username: username, attribution: attribution };
  $: valid = validUser(currentUser);

  const setAttribution = event => {
    attribution = event.target.value;
    customAttribution = true;
  };
</script>

<style>
  section {
    align-items: flex-start;
    background-color: var(--second-color);
    box-sizing: border-box;
    color: var(--app-primary-color);
    display: flex;
    flex-direction: column;
    height: 100%;
    justify-content: start;
    padding: var(--app-padding);
  }

  main {
    height: 100%;
    padding: 2rem 0;
  }

  input,
  label,
  span,
  p {
    display: block;
    line-height: 1.5rem;
    width: 100%;
  }

  span {
    color: var(--muted-color);
  }

  label {
    font-weight: bold;
    padding: 8px 0;
  }

  input {
    padding: 7px;
  }

  input:invalid {
    box-shadow: none;
  }

  .next {
    display: flex;
    justify-content: right;
    margin: 3rem 0 auto auto;
  }

  footer,
  footer p {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%;
  }
  footer p {
    font-size: 0.8rem;
    height: var(--app-touch-target-size);
    line-height: 1.5;
    margin: 0;
    padding: 0;
    text-align: center;
  }

  .illustration {
    color: var(--pink-color);
    float: left;
    padding: var(--app-padding) calc(2 * var(--app-padding)) var(--app-padding)
      var(--app-padding);
  }
</style>

<section class={dark ? 'dark' : ''}>
  <Header />

  <main>
    <form>
      <p>
        <label for="username">
          Username
          <small>(required)</small>
        </label>
        <input
          type="text"
          name="username"
          id="username"
          placeholder="gonzalo-bulnes"
          required
          bind:value={username} />
        <span>
          Your username will allow you to keep track of your contributions over
          time.
        </span>
      </p>
      {#if isContributor(username)}
        <div class="thanks">
          <div class="illustration">
            <Icon illustrative type="heart-full" size="32" />
          </div>
          <p>Welcome back! Thank you so much for you time and care!</p>
        </div>
      {/if}
      <p>
        <label for="attribution">Preferred attribution</label>
        <input
          type="text"
          name="attribution"
          id="attribution"
          placeholder="Gonzalo Bulnes Guilpain"
          bind:value={attribution}
          on:input={setAttribution} />
        <span>
          This is how your contributions will be attributed to you in the
          Memorable Words website.
        </span>
      </p>

      <div class="next">
        <CallToActionButton
          type="check"
          text="READY"
          title="Continue"
          disabled={!valid}
          onclick={() => {
            if (valid) {
              dispatch({ type: 'SET_USER', value: currentUser });
              dispatch({ type: 'VIEW_PAGE', value: DASHBOARD_PAGE });
            }
          }} />
      </div>
    </form>
  </main>

  <footer>
    <p>
      made&nbsp;with&nbsp;♥️&nbsp;by&nbsp;
      <a href="https://github.com/memorablewords">@gonzalo-bulnes</a>
    </p>
  </footer>
</section>
