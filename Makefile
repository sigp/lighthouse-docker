build-from-github :
	docker build ./lighthouse/master -t "lighthouse:master"
	docker build ./lighthouse/feature -t "lighthouse:feature" --no-cache
