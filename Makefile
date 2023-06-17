ARCH=$(shell uname -m)
TAG=latest-$(ARCH)

.PHONY: image push manifest

run:
	docker run --rm -it \
		-p 127.0.0.1:389:389 \
		-p 127.0.0.1:636:636 dnknth/ldap-demo:$(TAG)
	
image:
	docker build -t dnknth/ldap-demo:$(TAG) .

push: image
	docker push dnknth/ldap-demo:$(TAG)

manifest:
	docker manifest create dnknth/ldap-demo \
			--amend dnknth/ldap-demo:latest-x86_64 \
			--amend dnknth/ldap-demo:latest-aarch64
	docker manifest push --purge dnknth/ldap-demo
