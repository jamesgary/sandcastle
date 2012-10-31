# Sandcastle - Catchy Tagline

Sandcastle respects the developer.

## Development

Guard automatically compiles Coffeescript, SASS, and HAML, runs specs, and more!

In your shell console, run the following:

```shell
bundle install
bundle exec guard
```

It's also much easier if you run your files behind a server to avoid 'local file' security warnings. This project is already set up as a rack app if you run the following in your shell console:

```shell
rackup
open http://localhost:9292/public/dev/index.html
```

Lastly, for writing specs, you can use the awesome tool Test'Em by running the following:

```shell
testem
```
