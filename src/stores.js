import { writable } from "svelte/store";
import { WELCOME_PAGE } from "./pages";

export const darkMode = writable(false);
export const page = writable(WELCOME_PAGE);
export const preferredLocale = writable("en");
