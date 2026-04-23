#!/usr/bin/env bash

set -euo pipefail

volume_name="${1:-stremio_stremio-data}"
target_dir='/.stremio-server'
owner='65532:65532'

docker run --rm \
    -v "${volume_name}:${target_dir}" \
    alpine:3.20 \
    sh -lc "mkdir -p '${target_dir}' && chown -R ${owner} '${target_dir}'"
