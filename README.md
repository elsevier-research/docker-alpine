[![](https://badge.imagelayers.io/1science/alpine:latest.svg)](https://imagelayers.io/?images=1science/alpine:latest 'Get your own badge on imagelayers.io')

# What is Alpine Linux? 

![logo](https://raw.githubusercontent.com/1science/docker-alpine/latest/logo.png)

[Alpine Linux](http://alpinelinux.org/) is a Linux distribution built around [musl libc](http://www.musl-libc.org/) and [BusyBox](http://www.busybox.net/). 

This image is based on the well tested and documented [gliderlabs/alpine](http://gliderlabs.viewdocs.io/docker-alpine/) image. 
This makes Alpine Linux a great image base for utilities and even production applications. [Read more about Alpine Linux here](https://www.alpinelinux.org/about/) and you can see how their mantra fits in right at home with Docker images.

# Included packages

To get you started, a set of packages have been integrated:

- curl
- wget
- ca-certificates
- bash
- tree


# Supported tags

-	[`3.2`](https://github.com/1science/docker-alpine/tree/3.2)
-	[`3.1`](https://github.com/1science/docker-alpine/tree/3.1)

# Usage

Use this as base for your own containers:

```
FROM 1science/alpine
RUN apk-install <package_name>

CMD ["/bin/bash"]
```

or run it directly : 

```
docker run -ti 1science/alpine
```


# License

All the code contained in this repository, unless explicitly stated, is
licensed under ISC license.

A copy of the license can be found inside the [LICENSE](LICENSE) file.