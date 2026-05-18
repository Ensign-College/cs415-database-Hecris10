FROM postgres

ENV POSTGRES_PASSWORD=cs415ApiUserPass

COPY ./create /docker-entrypoint-initdb.d

EXPOSE 5432
