#!/bin/sh
elinks -no-numbering -dump http://acronymfinder.com/$1.html | sed -r '/(\*{4,} | This definition)/!d'
