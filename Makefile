.PHONY: run

runtime := python3.8

build:
	docker run --rm -v $(PWD):/var/task lambci/lambda:build-$(runtime) pip install -U -r requirements.txt -t ./lib

run: #build
	docker run --rm -v $(PWD):/var/task:ro,delegated lambci/lambda:$(runtime) lambda_function.handler
