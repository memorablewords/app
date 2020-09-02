import { get } from "svelte/store";
import {
  getDarkModeFromStorage,
  getUserFromStorage,
  storageAvailable,
  storeDarkMode,
  storeUser,
} from "./storage";
import {
  darkMode,
  handSideMode,
  page,
  thanksMessageVisible,
  user,
  userPreferencesOpen,
} from "./stores";
export const DECISION_YES = "yes-ncvow";
export const DECISION_NO = "no-sebak";
export const DECISION_REJECT = "reject-qwpcn";

export const defaultState = {};
export let state = defaultState;

function app(state, action) {
  switch (action.type) {
    case "INIT":
      if (storageAvailable("localStorage")) {
        user.update(() => getUserFromStorage());
        darkMode.update(() => getDarkModeFromStorage());
      } else {
        // FIXME Handle case where local storage is not available
      }
      break;
    case "SET_USER":
      user.update(() => action.value);
      storeUser(action.value);
      break;
    case "TOGGLE_DARK_MODE":
      darkMode.update((dark) => (!dark ? true : false));
      storeDarkMode(get(darkMode));
      break;
    case "TOGGLE_HAND_SIDE_MODE":
      handSideMode.update((handSideMode) => (!handSideMode ? true : false));
      break;
    case "TOGGLE_THANKS_MESSAGE":
      thanksMessageVisible.update((thanksMessageVisible) =>
        !thanksMessageVisible ? true : false
      );
      break;
    case "TOGGLE_USER_PREFERENCES":
      userPreferencesOpen.update((userPreferencesOpen) =>
        !userPreferencesOpen ? true : false
      );
      break;
    case "VIEW_PAGE":
      page.update(() => action.value);
      break;
    default:
      console.log("Unknown action type:", action.type);
  }
  return state;
}

export function dispatch(action) {
  console.log("-------");
  console.log("type:", action.type, "value:", action.value);
  state = app(state, action);
}
