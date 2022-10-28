import os
import ssl

import sqlalchemy


# connect_tcp_socket initializes a TCP connection pool
# for a Cloud SQL instance of Postgres.
def connect_tcp_socket() -> sqlalchemy.engine.base.Engine:
    # Note: Saving credentials in environment variables is convenient, but not
    # secure - consider a more secure solution such as
    # Cloud Secret Manager (https://cloud.google.com/secret-manager) to help
    # keep secrets safe.
    db_host = os.environ["34.133.128.59"]  # e.g. '127.0.0.1' ('172.17.0.1' if deployed to GAE Flex)
    db_user = os.environ["postgres"]  # e.g. 'my-db-user'
    db_pass = os.environ["AB1^&B*.c-;XK(3E"]  # e.g. 'my-db-password'
    db_name = os.environ["postgres"]  # e.g. 'my-database'
    db_port = os.environ["5432"]  # e.g. 5432

    pool = sqlalchemy.create_engine(
        # Equivalent URL:
        # postgresql+pg8000://<db_user>:<db_pass>@<db_host>:<db_port>/<db_name>
        sqlalchemy.engine.url.URL.create(
            drivername="postgresql+pg8000",
            username=db_user,
            password=db_pass,
            host=db_host,
            port=db_port,
            database=db_name,
        ),
        # ...
    )
    return pool
