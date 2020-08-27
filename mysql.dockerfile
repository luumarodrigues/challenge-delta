FROM mysql:5.7
LABEL maintainer="Luma Rodrigues"

COPY ./schema/*.sql /docker-entrypoint-initdb.d/

EXPOSE 3306