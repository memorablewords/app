import merge from "deepmerge";
import moment from "moment";
import { get } from "svelte/store";
import { v4 as uuid } from "uuid";
import { lists, user } from "./stores";

export function addDecision({ listId, word, decision }) {
  lists.update((previous) =>
    merge(previous, {
      [listId]: {
        words: {
          [word]: {
            reviews: {
              [uuid()]: {
                decision: decision,
                reviewer: get(user).username,
                createdAt: moment().utc().format(),
              },
            },
          },
        },
      },
    })
  );
}

export async function loadList(id) {
  return new Promise(async (resolve, reject) => {
    const local = get(lists);

    let fresh = {};

    if (!local || (local && !local[id])) {
      const url = `/data/${id}.json`;
      const response = await fetch(url);
      const upstream = await response.json();
      fresh[id] = upstream;
    }

    if (local) {
      fresh = merge(fresh, local);
    }

    lists.update(() => fresh);

    currentWord(get(lists), id);
    resolve();
  });
}

export function currentWord(lists, listId) {
  if (!lists || !listId || !lists[listId]) {
    return undefined;
  }

  const words = Object.entries(lists[listId].words).filter(
    ([_word, meta]) =>
      !meta.reviews ||
      Object.entries(meta.reviews).filter(
        ([_id, r]) => r.reviewer === get(user).username
      ).length === 0
  );

  if (words.length > 0) {
    return words[0][0]; // o_0
  }
  return undefined;
}
