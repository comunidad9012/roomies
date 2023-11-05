from waitress import serve

from routes import app

if __name__ == "__main__":
    serve(app, listen="localhost:5000")
