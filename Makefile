build: Dockerfile
	docker build -t 1science/alpine .

tag:
	docker tag 1science/alpine 1science/alpine
