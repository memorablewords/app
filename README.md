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
