import { locale } from "svelte-i18n";
import { get } from "svelte/store";
import {
  clear,
  getDarkModeFromStorage,
  getPreferredLocaleFromStorage,
  getUserFromStorage,
  storageAvailable,
  storeDarkMode,
  storePreferredLocale,
  storeUser,
} from "./storage";
import {
  darkMode,
  page,
  preferredLocale,
  user,
  userPreferencesOpen,
} from "./stores";

function app(action) {
  switch (action.type) {
    case "CLOSE_USER_PREFERENCES":
      userPreferencesOpen.update(() => false);
      break;
    case "INIT":
      if (storageAvailable("localStorage")) {
        user.update(() => getUserFromStorage());
        darkMode.update(() => getDarkModeFromStorage());
        dispatch({
          type: "SET_LOCALE",
          value: getPreferredLocaleFromStorage(),
        });
      }
      break;
    case "SET_LOCALE":
      locale.set(action.value);
      preferredLocale.update(() => action.value);
      storePreferredLocale(action.value);
      break;
    case "SET_USER":
      user.update(() => action.value);
      storeUser(action.value);
      break;
    case "TOGGLE_DARK_MODE":
      darkMode.update((dark) => (!dark ? true : false));
      storeDarkMode(get(darkMode));
      break;
    case "TOGGLE_USER_PREFERENCES":
      userPreferencesOpen.update((userPreferencesOpen) =>
        !userPreferencesOpen ? true : false
      );
      break;
    case "UNSET_USER":
      user.update(() => undefined);
      clear();
      break;
    case "VIEW_PAGE":
      page.update(() => action.value);
      dispatch({
        type: "CLOSE_USER_PREFERENCES",
      });
      break;
    default:
      console.debug("🔮 Unknown action type:", action.type);
  }
}

export function dispatch(action) {
  console.debug("Action type:", action.type, "value:", action.value);
  app(action);
}
