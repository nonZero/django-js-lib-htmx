#!/bin/bash
set +ex

VERSION="2.0.3"
URL="https://github.com/bigskysoftware/htmx/archive/refs/tags/v$VERSION.zip"
OUTPUT_ZIP="dist.zip"
curl -L -o $OUTPUT_ZIP $URL
rm -drv js_lib_htmx/static/htmx/*
mkdir -p tmp
unzip $OUTPUT_ZIP "htmx-$VERSION/dist/*" -d tmp
cp -drv tmp/htmx-$VERSION/dist/* js_lib_htmx/static/htmx/
rm -drv tmp
git add -v js_lib_htmx/static/htmx/
git status
rm $OUTPUT_ZIP
