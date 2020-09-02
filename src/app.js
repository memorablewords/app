import { getDarkModeFromStorage, storageAvailable } from "./storage";
import { darkMode } from "./stores";

function app(action) {
  switch (action.type) {
    case "INIT":
      if (storageAvailable("localStorage")) {
        darkMode.update(() => getDarkModeFromStorage());
      }
      break;
    default:
      console.log("Unknown action type:", action.type);
  }
}

export function dispatch(action) {
  console.log("-------");
  console.log("type:", action.type, "value:", action.value);
  app(action);
}
