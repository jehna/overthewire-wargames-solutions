#!/bin/bash

PORT=$(nmap -p 31000-32000 localhost --open  --script ssl-enum-ciphers -oX - | grep port.*ssl-enum-ciphers | grep -Po "(?<=portid=\")[^\"]+")
echo "$PASSWORD" | openssl s_client -connect "localhost:$PORT" -ign_eof -quiet 2>/dev/null

# Prints a private key, TODO: use the key for next level