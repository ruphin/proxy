dhparam.pem:
	docker pull frapsoft/openssl
	docker run -it --rm -v $$PWD:/export frapsoft/openssl dhparam -out /export/dhparam.pem 4096

.PHONY: production
production: dhparam.pem
	docker pull nginx:alpine
	docker build -t ruphin/proxy .
	docker push ruphin/proxy
