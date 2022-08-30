#!/bin/sh
echo "$PASSWORD" | openssl s_client -connect localhost:30001 -ign_eof -quiet 2>/dev/null | tail -n2 | head -n1