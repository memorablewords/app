import commonjs from "@rollup/plugin-commonjs";
import json from "@rollup/plugin-json";
import resolve from "@rollup/plugin-node-resolve";
import livereload from "rollup-plugin-livereload";
import svelte from "rollup-plugin-svelte";
import { terser } from "rollup-plugin-terser";

const production = !process.env.ROLLUP_WATCH;

function serve() {
  let server;

  function toExit() {
    if (server) server.kill(0);
  }

  return {
    writeBundle() {
      if (server) return;
      server = require("child_process").spawn(
        "npm",
        ["run", "start", "--", "--dev"],
        {
          stdio: ["ignore", "inherit", "inherit"],
          shell: true,
        }
      );

      process.on("SIGTERM", toExit);
      process.on("exit", toExit);
    },
  };
}

export default {
  input: "src/main.js",
  output: {
    sourcemap: true,
    format: "iife",
    name: "app",
    file: "public/build/bundle.js",
  },
  moduleContext: (id) => {
    // In order to match native module behaviour, Rollup
    // sets `this` as `undefined` at the top level of
    // modules. Rollup also outputs a warning if a module
    // tries to access `this` at the top level. The
    // following modules use `this` at the top level and
    // expect it to be the global `window` object, so we
    // tell Rollup to set `this = window` for these modules.
    //
    // See https://phrase.com/blog/posts/a-step-by-step-guide-to-svelte-localization-with-svelte-i18n-v3
    const thisAsWindowForModules = [
      "node_modules/intl-messageformat/lib/core.js",
      // "node_modules/intl-messageformat/lib/compiler.js",
      "node_modules/intl-messageformat/lib/formatters.js",
      "node_modules/intl-format-cache/lib/index.js",
      "node_modules/intl-messageformat-parser/lib/parser.js",
      "node_modules/intl-messageformat-parser/lib/skeleton.js",
      "node_modules/intl-messageformat-parser/lib/normalize.js",
    ];

    if (thisAsWindowForModules.some((id_) => id.trimRight().endsWith(id_))) {
      return "window";
    }
  },
  plugins: [
    json(),
    svelte({
      // enable run-time checks when not in production
      dev: !production,
      // we'll extract any component CSS out into
      // a separate file - better for performance
      css: (css) => {
        css.write("public/build/bundle.css");
      },
    }),

    // If you have external dependencies installed from
    // npm, you'll most likely need these plugins. In
    // some cases you'll need additional configuration -
    // consult the documentation for details:
    // https://github.com/rollup/plugins/tree/master/packages/commonjs
    resolve({
      browser: true,
      dedupe: ["svelte"],
    }),
    commonjs(),

    // In dev mode, call `npm run start` once
    // the bundle has been generated
    !production && serve(),

    // Watch the `public` directory and refresh the
    // browser on changes when not in production
    !production && livereload("public"),

    // If we're building for production (npm run build
    // instead of npm run dev), minify
    production && terser(),
  ],
  watch: {
    clearScreen: false,
  },
};
