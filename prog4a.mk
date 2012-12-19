#!/usr/bin/make -sf 

QUERY = <script
CURL = curl -s
COUNT = | grep -c '$(QUERY)' | xargs echo

main: delfi 15min lrytas

delfi:
	$(CURL) 'http://www.delfi.lt/' $(COUNT) $@:

15min:
	$(CURL) 'http://www.15min.lt/' $(COUNT) $@:

lrytas:
	$(CURL) 'http://www.lrytas.lt/' $(COUNT) $@:

