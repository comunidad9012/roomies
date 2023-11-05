import sqlite3
from wsgiref.simple_server import make_server
from urllib.parse import parse_qs

def application(environ, start_response):
    status = '200 OK'
    headers = [('Content-type', 'text/html; charset=utf-8')]
    start_response(status, headers)

    

        # Redirigir a la página de visualización
    return [b'<html><head><meta http-equiv="refresh" content="0;url=/view"></head></html>']

    # Mostrar el formulario
    with open('index.html', 'r') as file:
        return [file.read().encode('utf-8')]

if __name__ == '__main__':
    httpd = make_server('', 8000, application)
    print("Serving on port 8000...")
    httpd.serve_forever()
