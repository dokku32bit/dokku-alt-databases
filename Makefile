all: redis mariadb postgres mongodb

couchdb:
	make -C ./couchdb

mongodb:
	make -C ./mongodb

mysql:
	make -C ./mariadb

postgres:
	make -C ./postgres

redis:
	make -C ./redis

rabbitmq:
	make -C ./rabbitmq

memcached:
	make -C ./memcached


.PHONY: couchdb  elasticsearch memcached  mongodb  mysql  neo4j  postgres  rabbitmq  redis  riak
