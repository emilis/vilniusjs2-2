#!/usr/bin/make -f

main: foo baz

help:
	echo "Usage: $0 {foo|baz}"

foo:
	echo "Bar"

baz:
	echo "Quux"
