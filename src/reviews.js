import merge from "deepmerge";
import { get } from "svelte/store";
import { lists, user } from "./stores";

export async function loadWord(id) {
  return new Promise(async (resolve, reject) => {
    const local = get(lists);

    let fresh = {};

    if (!local[id]) {
      const url = `/data/${id}.json`;
      const response = await fetch(url);
      const upstream = await response.json();
      fresh[id] = upstream;
    }

    fresh = merge(fresh, local);

    lists.update(() => fresh);

    const words = Object.entries(fresh[id].words).filter(
      ([_word, meta]) =>
        !meta.reviews ||
        Object.entries(meta.reviews).filter(
          ([_id, r]) => r.reviewer === get(user).username
        ).length === 0
    );

    if (words.length > 0) {
      resolve(words[0][0]); // o_0
    }
  });
}

export function _mergeLists(upstream, local) {
  return merge(upstream, local);
}
