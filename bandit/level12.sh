#!/bin/bash
xxd -r data.txt | zcat | bunzip2 | tar -Oxzf - | tar -Oxf - data6.bin | tar  -Ojxf - | zcat | sed "s/.* //"