<script>
  import { user } from "./stores";
</script>

<form>
  <fieldset>
    <legend>Getting started</legend>
    <p>Hi, I'm Gonzalo.</p>
    <p>
      <label for="name">How do you prefer I call you?</label>
      <input type="text" name="name" id="name" />
    </p>
    <p>Hi {$user ? $user.name : '<em>your name here</em>'}!</p>
    <p>
      <label for="attribution">
        How to you prefer I attribute your contributions?
      </label>
      <input
        type="text"
        name="attribution"
        id="attribution"
        placeholder="Gonzalo Bulnes Guilpain" />
    </p>
  </fieldset>
</form>
