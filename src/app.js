import { locale } from "svelte-i18n";
import {
  getDarkModeFromStorage,
  getPreferredLocaleFromStorage,
  storageAvailable,
  storePreferredLocale,
} from "./storage";
import { darkMode, preferredLocale } from "./stores";

function app(action) {
  switch (action.type) {
    case "INIT":
      if (storageAvailable("localStorage")) {
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
    default:
      console.debug("Unknown action type:", action.type);
  }
}

export function dispatch(action) {
  console.debug("Action type:", action.type, "value:", action.value);
  app(action);
}
