<script>
  import { _ } from "svelte-i18n";
  import { Button, Icon, Spacer, Text } from "memorablewords-svelte-components";
  import { asyncDispatch, dispatch } from "./app";
  export let disabled = false;
</script>

<Text element="h2" display="header">Send your contributions</Text>
<Text element="p" stacked>1. Download your contributions to your device.</Text>
<Button
  title={$_('download_contributions_button_title')}
  onclick={() => {
    asyncDispatch({ type: 'DOWNLOAD_CONTRIBUTIONS' });
  }}
  {disabled}
  relaxed
  border>
  <Icon type="download" size={24} />
  <Spacer />
  <Text>{$_('download_contributions_button_text')}</Text>
</Button>
<Text element="p" stacked>
  2. Send me the file attached to an email to
  <a href="mailto:contributions@memorablewords.org">
    contributions@memorablewords.org
  </a>
</Text>
<Text element="p" stacked>
  3. I'll let you know when I received your email!
</Text>
<Text element="p" stacked>
  Meanwhile, you can review more words, or take a break! It's totally up to you!
</Text>
<Button
  title="Close"
  onclick={() => {
    dispatch({ type: 'TOGGLE_CONTRIBUTE_TAKEOVER' });
  }}
  {disabled}
  relaxed
  border>
  <Text>Done, I've sent the email</Text>
  <Spacer />
  <Icon type="check" size={24} />
</Button>
