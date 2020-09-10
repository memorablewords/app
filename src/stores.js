import { writable } from "svelte/store";
import { DASHBOARD_PAGE } from "./pages";

export const currentListId = writable(undefined);
export const darkMode = writable(false);
export const flipMode = writable(false);
export const page = writable(DASHBOARD_PAGE);
export const preferredLocale = writable("en");
export const user = writable(undefined);
export const userPreferencesOpen = writable(false);
