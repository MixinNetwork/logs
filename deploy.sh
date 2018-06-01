#!/bin/sh

set -e

rm -r dist/

hugo
minify -r --type json -o dist/ public

gzip dist/index.json
mv dist/index.json.gz dist/logs.json

gsutil -h "Cache-Control:no-store, no-cache, must-revalidate, proxy-revalidate, max-age=0" -h "Content-Encoding:gzip" -m cp dist/logs.json gs://mixin-one/assets/
