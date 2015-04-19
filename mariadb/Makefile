BASENAME = 'dokku32bit/mariadb'
DIRS = $(wildcard */)


redisbuild:
	for dir in $(DIRS); do \
		TAG=`cat $$dir/TAG`; \
		docker build --rm -t ${BASENAME}:$$TAG $$dir;\
	done
