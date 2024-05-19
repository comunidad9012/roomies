import mysql.connector
from config import DB_CONFIG, DB_NAME
from config import DB_CONFIG




def get_connection(
    connect_test_db: bool = False,
) :
    """Obtain a mysql-connector connection object

    return: mysql.connector.connect(config)
    """

    DB_CONFIG["database"] = DB_NAME

    connection = mysql.connector.connect(**DB_CONFIG)

    return connection


def get_conn_n_cursor(dictionary=False, named_tuple=False):
    connection = get_connection()

    if dictionary:
        cursor = connection.cursor(dictionary=True)
    elif named_tuple:
        cursor = connection.cursor(named_tuple=True)

    return connection, cursor



