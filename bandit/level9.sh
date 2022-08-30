#!/bin/bash
cat data.txt | grep -Po "(?<=[=]{10} ).*" --text | tail -n1