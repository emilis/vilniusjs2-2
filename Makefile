.PHONY:	main publish

main:
	bash slides.sh

publish:
	git push origin master
