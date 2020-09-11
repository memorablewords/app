import { locale } from "svelte-i18n";
import { get } from "svelte/store";
import { addDecision, loadList } from "./reviews.js";
import {
  clear,
  getDarkModeFromStorage,
  getFlipModeFromStorage,
  getListsFromStorage,
  getPreferredLocaleFromStorage,
  getUserFromStorage,
  storageAvailable,
  storeCurrentListId,
  storeDarkMode,
  storeFlipMode,
  storeLists,
  storePreferredLocale,
  storeUser,
} from "./storage";
import {
  currentListId,
  darkMode,
  flipMode,
  lists,
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
    case "DECISION":
      addDecision(action.value);
      storeLists(get(lists));
      break;
    case "INIT":
      if (storageAvailable("localStorage")) {
        user.update(() => getUserFromStorage());
        darkMode.update(() => getDarkModeFromStorage());
        flipMode.update(() => getFlipModeFromStorage());
        lists.update(() => getListsFromStorage());
        dispatch({
          type: "SET_LOCALE",
          value: getPreferredLocaleFromStorage(),
        });
      }
      break;
    case "SET_CURRENT_LIST_ID":
      currentListId.update(() => action.value);
      storeCurrentListId(action.value);
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
    case "TOGGLE_HAND_MODE":
      flipMode.update((flip) => (!flip ? true : false));
      storeFlipMode(get(flipMode));
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

async function asyncApp(action) {
  switch (action.type) {
    case "LOAD_LIST":
      await loadList(action.value);
      storeLists(get(lists));
      return;
    default:
      console.debug("🔮 Unknown async action type:", action.type);
  }
}

export async function asyncDispatch(action) {
  console.debug("Async action type:", action.type, "value:", action.value);
  return await asyncApp(action);
}
