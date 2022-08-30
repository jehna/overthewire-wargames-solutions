#!/bin/bash
find / -type f -size 33c -user bandit7 -group bandit6 2> /dev/null | xargs cat
