push: image
	docker push dnknth/ldap-demo

image:
	docker build -t dnknth/ldap-demo .
