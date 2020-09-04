export const ATTRIBUTION_KEY = "attribution-9432d";
export const DARK_MODE_KEY = "darkMode-lduwe";
export const PREFERRED_LOCALE_KEY = "preferredLocale-owjfu";
export const USERNAME_KEY = "username-she3e";

export function clear() {
  localStorage.clear();
}

export function storeDarkMode(mode) {
  localStorage.setItem(DARK_MODE_KEY, mode);
}

export function getDarkModeFromStorage() {
  return localStorage.getItem(DARK_MODE_KEY) === "true";
}

export function storePreferredLocale(mode) {
  localStorage.setItem(PREFERRED_LOCALE_KEY, mode);
}

export function getPreferredLocaleFromStorage() {
  let locale = localStorage.getItem(PREFERRED_LOCALE_KEY);
  return locale && locale !== "" ? locale : "en";
}

export function storeUser(user) {
  localStorage.setItem(USERNAME_KEY, user.username);
  localStorage.setItem(ATTRIBUTION_KEY, user.attribution);
}

export function getUserFromStorage() {
  let username = sanitize(localStorage.getItem(USERNAME_KEY));
  if (username === "") {
    return undefined;
  }
  return {
    username: username,
    attribution: sanitize(localStorage.getItem(ATTRIBUTION_KEY)),
  };
}

function sanitize(value) {
  if (!value || value === "null") {
    return "";
  }
  return value;
}

/* storageAvailable detects whether localStorage is both supported and available.
 *
 * Example:
 *
 * if (storageAvailable('localStorage')) {
 *   // Yippee! We can use localStorage awesomeness
 * }
 * else {
 *   // Too bad, no localStorage for us
 * }
 *
 * Credits: https://developer.mozilla.org/en-US/docs/Web/API/Web_Storage_API/Using_the_Web_Storage_API#Feature-detecting_localStorage
 */
export function storageAvailable(type) {
  var storage;
  try {
    storage = window[type];
    var x = "__storage_test__";
    storage.setItem(x, x);
    storage.removeItem(x);
    return true;
  } catch (e) {
    return (
      e instanceof DOMException &&
      // everything except Firefox
      (e.code === 22 ||
        // Firefox
        e.code === 1014 ||
        // test name field too, because code might not be present
        // everything except Firefox
        e.name === "QuotaExceededError" ||
        // Firefox
        e.name === "NS_ERROR_DOM_QUOTA_REACHED") &&
      // acknowledge QuotaExceededError only if there's something already stored
      storage &&
      storage.length !== 0
    );
  }
}
