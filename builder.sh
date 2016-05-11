#!/bin/bash
set -e

cd $(cd ${0%/*} && pwd -P);

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	versions=( */ )
fi
versions=( "${versions[@]%/}" )

image="adriagalin/nodejs-bower-grunt"
docker=`which docker`

function builder_push_image {
	tag=$(cat $version/Dockerfile | grep "FROM node:" | cut -d':' -f2)
	$docker build -t $image:$tag $version
	$docker tag $image:$tag $image:latest
	$docker push adriagalin/nodejs-bower-grunt:$tag
}

for version in "${versions[@]}"; do

	builder_push_image

done

$docker push adriagalin/nodejs-bower-grunt:latest
