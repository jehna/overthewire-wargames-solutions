#!/bin/bash
find ./inhere/ -type f -size 1033c -not -executable | xargs file | grep text | cut -d: -f1 | xargs cat | head -n1