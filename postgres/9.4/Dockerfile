FROM patrickjahns/ubuntu-debootstrap:14.04
RUN apt-get -qq update                                                                                          && \
    apt-get install -y -qq python-software-properties software-properties-common wget                           && \
    echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list   && \
    wget --quiet --no-check-certificate -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get -qq update                                                                                          && \
    LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y -qq postgresql-9.4 postgresql-contrib-9.4	&& \
    apt-get clean && apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    rm -rf /var/cache/apt/archives/*.deb && \
	echo 'host all all 0.0.0.0/0 md5' >> /etc/postgresql/9.4/main/pg_hba.conf && \
	sed -i -e"s/var\/lib/opt/g" /etc/postgresql/9.4/main/postgresql.conf


ADD	. /usr/bin
RUN	chmod +x /usr/bin/start_pgsql.sh

EXPOSE 5432
