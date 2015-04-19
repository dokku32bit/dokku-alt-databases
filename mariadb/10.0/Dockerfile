FROM patrickjahns/ubuntu-debootstrap:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0xcbcb082a1bb943db && \
	echo "deb http://mirrors.n-ix.net/mariadb/repo/10.0/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list && \
	apt-get update && \
	echo mysql-server-10.0 mysql-server/root_password password 'a_stronk_password' | debconf-set-selections && \
	echo mysql-server-10.0 mysql-server/root_password_again password 'a_stronk_password' | debconf-set-selections && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server && \
	rm -rf /var/lib/apt/lists/* && \
	apt-get clean && apt-get autoremove                                         && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*                               && \
	rm -rf /var/cache/apt/archives/*.deb                                        

ADD	. /usr/bin
RUN	chmod +x /usr/bin/start_mariadb.sh
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" -e"s/var\/lib/opt/g" /etc/mysql/my.cnf

EXPOSE 3306
