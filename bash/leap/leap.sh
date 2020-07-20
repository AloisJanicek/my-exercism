#!/usr/bin/env bash

main () {
    year="$1"

    if ! [[ $year =~ ^[+-]?[0-9]+$ ]] || [[ $# -ne 1 ]]; then
        echo "Usage: leap.sh <year>" 
        exit 1
    fi

    if [[ (0 -eq $((year % 4))) && ((0 -ne $((year % 100))) || (0 -eq $((year % 400)))) ]] ; then
        echo "true"
    else
        echo "false"
    fi
}

main "$@"
