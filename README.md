# Alpine Linux Docker image

A minimal, busybox-like container (~ 9MB) based on [Alpine Linux](http://alpinelinux.org/),
that contains [apk](http://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management)
package manager to ease installation of extra packages and help you build
smaller development containers.

This is possible thanks to the work from [mini-containers](https://github.com/mini-containers/base)
and [uggedal](https://github.com/uggedal).

## Included packages

To get you started, a set of packages have been integrated:

- curl
- wget
- ca-certificates
- bash
- tree

## Usage

Use this as base for your own containers:

```dockerfile
FROM 1science/alpine
RUN apk-install <pakckagename>

CMD ["/bin/sh"]
```

or run it directly : 

```
docker run -ti 1science/alpine
```

And install or extend with packages as you please.

You can find a list of packages you can install on Alpine Linux [Packages](http://forum.alpinelinux.org/packages) section.


## License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.
