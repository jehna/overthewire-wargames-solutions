#!/bin/bash
cat data.txt | sort | uniq -c | grep -Po "(?<= 1 ).*"