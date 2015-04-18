build: Dockerfile
	docker build -t 1science/alpine:latest .

tag:
	docker tag 1science/alpine:latest 1science/alpine:3.1
