Memorable Words App
===================

A statically-deployed web app to enable the collaborative review of word lists.


Development
-----------

Install the dependencies…

```bash
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
make release # will build the app and create a new release
make deploy # will deploy the new release
make record-release
```

  [heroku]: https://heroku.com
  [rollup]: https://rollupjs.org
  [sirv]: https://github.com/lukeed/sirv
  [surge]: https://surge.sh
  [svelte]: https://svelte.dev
