#!/bin/bash
echo "$PASSWORD" | nc localhost 30000 | tail -n2 | head -n1