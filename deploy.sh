#!/bin/sh
hugo
minify -r --type json -o dist/ public
scp dist/index.json one@mixin-logs:html/
