ARCH=$(shell uname -m)
TAG=latest-$(ARCH)

push: image
	docker push dnknth/ldap-demo:$(TAG)

image:
	docker build -t dnknth/ldap-demo:$(TAG) .

manifest:
	docker manifest create --amend dnknth/ldap-demo \
			dnknth/ldap-demo:latest-x86_64 \
			dnknth/ldap-demo:latest-aarch64
	docker manifest push dnknth/ldap-demo
