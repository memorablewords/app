import { writable } from "svelte/store";
import { REVIEW_PAGE } from "./pages";

export const darkMode = writable(false);
export const handSideMode = writable(false);
export const thanksMessageVisible = writable(false);
export const contributionPresent = writable(false);
export const settings = writable(false);
export const page = writable(REVIEW_PAGE);
export const loading = writable(undefined);
export const error = writable(undefined);
