#!/bin/bash

/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
  --proxy-server="socks5://127.0.0.1:1080" \
  --host-resolver-rules="MAP * ^NOTFOUND , EXCLUDE 127.0.0.1" \
  --no-first-run \
  --no-default-browser-check \
  --user-data-dir="/tmp/chrome_socks5" > /dev/null 2>&1 &
