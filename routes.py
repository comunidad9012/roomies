import sqlite3
from db import get_conn_n_cursor
from wsgi_app import Wsgiclass, render_template
from webob import Request, Response
app = Wsgiclass()


@app.ruta("/")
def home_page(request, response):
    conexion,cursor=get_conn_n_cursor(dictionary=True)
    html_respuesta = render_template("index.html")
    response.text = html_respuesta["text"]
    response.content_type = html_respuesta["type"]


@app.ruta("/usuarios")
def home_pageisita(request, response):
    connector, curs = get_conn_n_cursor(dictionary=True)
    curs.execute ("SELECT * FROM usuarios")
    data = curs.fetchall()
    html_respuesta = render_template("tabla-generica.html", data=data)
    response.text = html_respuesta["text"]
    response.content_type = html_respuesta["type"]

@app.ruta ("/registro")
def register(request: Request, response: Response):
    register_template ="registro.html"
    if request.method == 'POST':
        form_data = request.POST
                
        # Conectar a la base de datos y guardar los datos
        conn = sqlite3.connect('roomies.sql')
        cursor = conn.cursor()
        nombre = form_data['nombre']
        apellido = form_data['apellido']
        correo = form_data['correo']
        edad = form_data['edad']
        nacionalidad = form_data['nacionalidad']
        fecha_nacimiento = form_data['fecha-de-nacimiento']
        genero = form_data['genero']

        cursor.execute("INSERT INTO roomies (nombre, apellido, correo, edad, nacionalidad, fecha_nacimiento, genero) VALUES (?, ?, ?, ?, ?, ?, ?)",
                                            (nombre, apellido, correo, edad, nacionalidad, fecha_nacimiento, genero))
        
        conn.commit()
        conn.close()
    html_respuesta = render_template(register_template)
    response.text = html_respuesta["text"]
    response.content_type = html_respuesta["type"]
    
    