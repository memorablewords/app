import merge from "deepmerge";
import { derived, writable } from "svelte/store";
import { DASHBOARD_PAGE } from "./pages";

export const currentListId = writable(undefined);
export const darkMode = writable(false);
export const flipMode = writable(false);
export const lists = writable({});
export const page = writable(DASHBOARD_PAGE);
export const preferredLocale = writable("en");
export const user = writable(undefined);
export const userPreferencesOpen = writable(false);
export const contributeTakeoverOpen = writable(false);

const stats = (reviewer, lists) => {
  if (!lists) {
    return {};
  }
  return [{}, ...Object.entries(lists)].reduce((acc, [id, list]) => {
    return merge(acc, {
      [id]: {
        total: Object.entries(list.words).length,
        reviewed: Object.entries(list.words).filter(
          ([_word, meta]) =>
            meta.reviews &&
            Object.entries(meta.reviews).filter(
              ([_id, r]) => r.reviewer === reviewer
            ).length > 0
        ).length,
      },
    });
  });
};

export const listsStats = derived([user, lists], ([$user, $lists]) =>
  stats($user.username, $lists)
);
