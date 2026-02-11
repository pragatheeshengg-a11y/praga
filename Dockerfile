FROM postgres:latest

# Set default environment variables (can be overridden by docker-compose)
ENV POSTGRES_DB=mydb
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword

# Copy initialization scripts (optional)
# Any .sql or .sh file here will run on first container start
COPY ./init /docker-entrypoint-initdb.d/

EXPOSE 5432
