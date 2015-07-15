# Simple npm build container

Runs `npm` install, test, build.

## Getting started

* Build container
~~~bash
docker build -t npm-builder .
~~~
* Run container

~~~bash
# cd to your workdir
docker run --rm --volume $(pwd):/src npm-builder
~~~