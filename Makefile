build: Dockerfile
	docker build -t onescience/alpine .

tag:
	docker tag onescience/alpine onescience/alpine
