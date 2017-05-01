# Plone-Docsbuilder

Containerized application based on Sphinx for test builds of docs.plone.org

## Features

- Small Image, based on [Alpine Linux](http://www.alpinelinux.org/).
- You do not need to install sphinx locally.
- Pre-configured with different add-ons.
- A new, clean and 'fresh' build with every test run.
- Uses [Tini](https://github.com/krallin/tini) as `init`.
- Uses [su-exec](https://github.com/ncopa/su-exec) for setting permissions.

## Documentation

Full documentation for end users can be found in the ["docs"](docs) folder.

## Dependencies

- [Docker](https://docker.com "Homepage of docker")

## Installation

Pull the image:

```
docker pull testthedocs/plone-docsbuilder
```

## Contribute

- [Issue Tracker](github.com/testthedocs/plone-docsbuilder/issues)
- [Source Code](github.com/testthedocs/plone-docsbuilder)

## Support

If you are having issues, please let us know.

## License

The project is licensed under the GPLv2.
