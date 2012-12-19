#!/usr/bin/make -sf 

QUERY = <script
C = curl -s 'http://www.$@.lt/' | grep -c '$(QUERY)' | xargs echo $@:

main: delfi 15min lrytas alfa

delfi:
	$C
15min: delfi
	$C
lrytas: delfi
	$C
alfa: delfi 15min lrytas
	$C
