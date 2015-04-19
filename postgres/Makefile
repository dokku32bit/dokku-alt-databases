BASENAME = 'dokku32bit/postgres'
DIRS = $(wildcard */)


redisbuild:
	for dir in $(DIRS); do \
		TAG=`cat $$dir/TAG`; \
		docker build --rm -t ${BASENAME}:$$TAG $$dir;\
	done
