# Ejemplo Simple de uso de Jinja2 con WebOb

Este repositorio es una pequeña demostración de cómo utilizar WebOb y Jinja2.

## 'Instalación' y Configuracion

0. Extrar el archivo ZIP

1. Dentro de un entorno virtual, instalar los requerimientos

``` bash
    pip install -r requirements.txt
```

2. Crear un archivo `config.py` con la siguiente información:

``` python
    DB_CONFIG = {
    "host": "localhost",
    "user": "tu_nombre_de_usuario_mysql",
    "password": "tu_contraseña_mysql",
    "database": "nombre_de_tu_base_de_datos",
    "port": 3306,
    }
```

3. Para que el ejemplo corra tal cual esta, tu base de datos requiere una tabla llamada 'usuarios', en caso de querer mostrar otra tabla, cambiar el `SELECT` de la linea 17 del archivo `routes.py`

``` python
15    def home_page(request, response):
16        cnx, curs = get_conn_n_cursor(dictionary=True)
17        curs.execute("SELECT * FROM nombre_de_tu_tabla") <-- cambiar esto!
18        data = curs.fetchall()
```

## Uso

Si configuraste el repositorio como se indiqué hasta el punto 3 de la lista anterior, entonces podés utilizarlo para programar tu proyecto.

Con la configuración actual Jinja2 no puede servir archivos estáticos, un temón pero no le encontré la vuelta. Eso significa que para enlazar `styles.css` y cualquier imagen que tengan en su proyecto van a tener que buscar cómo configurarlo o copiar un enlace de internet, como yo hice en `tabla-generica.html` lineas 82, 94 y 106:

``` html
82 src="https://github.com/ger-rinaldi/promanager/blob/proyect_routes/app/static/setting.png?raw=1"

[...]

94 src="https://github.com/ger-rinaldi/promanager/blob/proyect_routes/app/static/view.png?raw=1"

[...]

106 src="https://github.com/ger-rinaldi/promanager/blob/proyect_routes/app/static/recycle-bin.png?raw=1"
```
