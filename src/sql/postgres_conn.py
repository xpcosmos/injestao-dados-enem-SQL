import psycopg2

def create_server_connection(db_name, db_host, db_user, db_pass, db_port):
    conn = psycopg2.connect(database=db_name,
                        host=db_host,
                        user=db_user,
                        password=db_pass,
                        port=db_port)
    return conn

