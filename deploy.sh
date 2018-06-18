#!/bin/sh

set -e

rm -r dist/ public/

hugo
minify -o dist/logs.json public/logs/index.json
minify -o dist/events.json public/events/index.json

gzip dist/logs.json
gzip dist/events.json
mv dist/logs.json.gz dist/logs.json
mv dist/events.json.gz dist/developer-events.json

gsutil -h "Cache-Control:no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0" -h "Content-Encoding:gzip" -m cp dist/logs.json gs://mixin-one/assets/
gsutil -h "Cache-Control:no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0" -h "Content-Encoding:gzip" -m cp dist/developer-events.json gs://mixin-one/assets/
