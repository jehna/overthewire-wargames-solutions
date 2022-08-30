#!/bin/bash
cat data.txt | base64 -d | sed "s/.* //"