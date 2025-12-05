#!/bin/bash

if [ "$1" == "histo" ] && [ "$2" == "src" ]; then

    grep "Spring" data/c-wildwater_v0.dat | cut -d';' -f3- | cut -d'#' -f2 | cut -d';' -f1,2 | tr ';' '\n' >> tests/histo_srx_nom.txt
else
    echo "Cette commande n'est pas reconnue."
fi
