Memorable Words App
===================

A statically-deployed web app to enable the collaborative review of word lists.


Development
-----------

### Components library

This app is configured to use of a library of components that is maintained separately. You must make sure it is available before installing the dependencies.

```sh
# Clone the components library nex to this app (the path matters):
git clone git@github.com:memorablewords/svelte-components.git ../svelte-components
```

Once the components library is available at `../svelte-components`, it will be installed with the rest of the dependencies.

### Install the dependencies

Install the dependencies…

```sh
cd app
npm install
```

…then start [Rollup][rollup]:

```bash
npm run dev
```

Navigate to [localhost:5000](http://localhost:5000). You should see your app running. Edit a component file in `src`, save it, and reload the page to see your changes.

By default, the server will only respond to requests from localhost. To allow connections from other computers, edit the `sirv` commands in package.json to include the option `--host 0.0.0.0`.


### Building and running in production mode

To create an optimized version of the app:

```bash
make build
```

_You can run the newly built app with `npm run start`. This uses [sirv][sirv], which is included in your package.json's `dependencies` so that the app will work when you deploy to platforms like [Heroku][heroku]._

### Deployment

Install [`surge`][surge] if you haven't already:

```bash
npm install -g surge
```

Then, from within the `app` folder:

```bash
git checkout main && git pull origin main
make release record-release # will build the app and create and record a new release
make deploy # will deploy the new release
git push origin main
```

  [heroku]: https://heroku.com
  [rollup]: https://rollupjs.org
  [sirv]: https://github.com/lukeed/sirv
  [surge]: https://surge.sh
  [svelte]: https://svelte.dev

Credits
-------

Most of the project icons are [Feather](https://feathericons.com/) icons, created by [@colebemis](https://github.com/colebemis) and published under the MIT License. The other icons are inspired by them!

The application code also depends on several projects from the Svelte ecosystem, in particular [`svelte-i18n`](https://github.com/kaisermann/svelte-i18n) and [@ashour](https://github.com/ashour) accompanying [blog post](https://phrase.com/blog/posts/a-step-by-step-guide-to-svelte-localization-with-svelte-i18n-v3/) made my day.

The design owes to Amanda Sepúlveda Brajovic, as does the management of the project.

Here and there, credits are given in the code, huge thanks to everyone!

License
-------

```
Memorable Words App
Copyright (C) 2020 Gonzalo Bulnes Guilpain

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
