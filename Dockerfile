FROM appsvc/apps:apache-php-mysql-0.2

COPY wp.tar.gz /tmp
COPY wp-entrypoint.sh /tmp
COPY wp-copy.sh /tmp

RUN chmod u+x /tmp/wp-entrypoint.sh
RUN chmod u+x /tmp/wp-copy.sh

ENTRYPOINT ["/tmp/wp-entrypoint.sh"]