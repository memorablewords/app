import { writable } from "svelte/store";
import { WELCOME_PAGE } from "./pages";

export const darkMode = writable(false);
export const handSideMode = writable(false);
export const thanksMessageVisible = writable(false);
export const contributionPresent = writable(false);
export const user = writable(undefined);
export const lists = writable([]);
export const page = writable(WELCOME_PAGE);
export const loading = writable(undefined);
export const error = writable(undefined);
