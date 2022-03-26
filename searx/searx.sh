#!/usr/bin/env sh

# Starts a searx instance.

export PORT=9000
docker pull searx/searx
docker run --rm -d -v ~/.scripts/searx/settings:/etc/searx -p $PORT:8080 -e BASE_URL=http://localhost:$PORT searx/searx:1.0.0-280-a880920d

