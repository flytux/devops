FROM trinodb/trino

ENV TRINO_ROOT=/usr/lib/trino/default

#COPY conf/password-authenticator.properties ${TRINO_ROOT}/etc
#COPY conf/password.db ${TRINO_ROOT}/etc

COPY conf/postgresql.properties ${TRINO_ROOT}/etc/catalog
COPY conf/mongodb.properties ${TRINO_ROOT}/etc/catalog

EXPOSE 8080
USER trino:trino
ENV LANG en_US.UTF-8
CMD ["/usr/lib/trino/bin/run-trino"]
