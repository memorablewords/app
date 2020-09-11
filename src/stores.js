import { writable } from "svelte/store";
import { DASHBOARD_PAGE } from "./pages";

export const currentListId = writable(undefined);
export const darkMode = writable(false);
export const flipMode = writable(false);
export const lists = writable({});
export const page = writable(DASHBOARD_PAGE);
export const preferredLocale = writable("en");
export const user = writable(undefined);
export const userPreferencesOpen = writable(false);
