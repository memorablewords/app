export const USERNAME_KEY = "username-she3e";
export const ATTRIBUTION_KEY = "attribution-9432d";

export function storeUser(user) {
  localStorage.setItem(USERNAME_KEY, user.username);
  localStorage.setItem(ATTRIBUTION_KEY, user.attribution);
}

export function getUserFromStorage() {
  return {
    username: localStorage.getItem(USERNAME_KEY),
    attribution: localStorage.getItem(ATTRIBUTION_KEY),
  };
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
