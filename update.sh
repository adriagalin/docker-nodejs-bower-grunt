#!/bin/bash
set -e

cd $(cd ${0%/*} && pwd -P);

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	versions=( */ )
fi
versions=( "${versions[@]%/}" )

template=
dockerfile=

function update_node_version {
	fullVersion="$(curl -sSL --compressed 'https://nodejs.org/dist' | grep '<a href="v'"$version." | sed -E 's!.*<a href="v([^"/]+)/?".*!\1!' | cut -f 3 -d . | sort -n | tail -1)"
	(
		cp $template $dockerfile
		sed -E -i.bak 's/^(FROM node:).*/\1'"$version.$fullVersion"'/' "$dockerfile"
		rm "$dockerfile.bak"
	)
}

for version in "${versions[@]}"; do

	template="Dockerfile.template"
	dockerfile="$version/Dockerfile"

	update_node_version

done
