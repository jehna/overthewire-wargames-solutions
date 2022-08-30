#!/bin/bash
find ./inhere/ -type f | xargs file | grep text | cut -d: -f1 | xargs cat
