#!/usr/bin/env bash

set -euo pipefail

release() {
	local version
	version="$1"

	if git tag -l | grep "v$version" >/dev/null; then
		echo "ERROR: version v$version already exists!"
		exit 1
	fi

	if ! git diff-index --exit-code --ignore-submodules HEAD >/dev/null; then
		echo "ERROR: There are modified files in the git repository!"
		exit 1
	fi

	sed -i -E "s/^FROM .+/FROM docker.elastic.co\\/elasticsearch\\/elasticsearch:$version/" Dockerfile
	git add Dockerfile
	git commit -m "Elasticsearch v$version"
	git tag -a -m "Elasticsearch v$version"
}

release "$@"
