#!/usr/bin/make -sf 

QUERY = <script

main: delfi 15min lrytas

delfi:
	curl -s 'http://www.delfi.lt/' | grep -c '$(QUERY)' | xargs echo delfi:

15min:
	curl -s 'http://www.15min.lt/' | grep -c '$(QUERY)' | xargs echo 15min:

lrytas:
	curl -s 'http://www.lrytas.lt/' | grep -c '$(QUERY)' | xargs echo lrytas:

