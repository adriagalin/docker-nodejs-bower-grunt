NodeJS - Grunt - Bower image
============================

Node.js & Grunt & Bower docker image for JavaScript-based development.

This container allows you to run most Grunt and Bower commands without having to install them on the host system.

[![](https://imagelayers.io/badge/adriagalin/nodejs-bower-grunt:latest.svg)](https://imagelayers.io/?images=adriagalin/nodejs-bower-grunt:latest)

[![Docker build](http://dockeri.co/image/adriagalin/nodejs-bower-grunt)](https://registry.hub.docker.com/u/adriagalin/nodejs-bower-grunt/)

Usage
-----

To run a Docker container

```
docker run -it --rm -v `pwd`:/data adriagalin/nodejs-bower-grunt
```

#### Run `node`

```
docker run -it --rm -v `pwd`:/data adriagalin/nodejs-bower-grunt node
```

#### Run `npm`

```
docker run -it --rm -v `pwd`:/data adriagalin/nodejs-bower-grunt npm
```

#### Run `bower`

```
docker run -it --rm -v `pwd`:/data adriagalin/nodejs-bower-grunt bower
```

#### Run `grunt`

```
docker run -it --rm -v `pwd`:/data adriagalin/nodejs-bower-grunt grunt
```

you could optionally pass **-u** option and other docker options:

```
docker run -it --rm -u $UID -v `pwd`:/data adriagalin/nodejs-bower-grunt grunt
```

Or create your own deployable docker container:

```Dockerfile
FROM adriagalin/nodejs-bower-grunt

ADD MyProgram /MyProgram

ADD run.sh /run.sh

ENTRYPOINT /run.sh
```

License
-------

This Dockerfile is released under the MIT license, which should have accompanied the Dockerfile. Files and binaries contained inside the image may contain other Licenses.

Author information
------------------

[Adrià Galín](http://www.adriagalin.com)

Inspiration
-----------

During development, some roles in Ansible Galaxy/Github also inspired me:

-	[nodejs](https://github.com/nodejs/docker-node)
-	[dockerfile](https://github.com/dockerfile/nodejs-bower-grunt)
-	[digitallyseamless](https://github.com/DigitallySeamless/docker-nodejs-bower-grunt)

thank you.
