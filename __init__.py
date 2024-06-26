import os

from models import Usuario
from werkzeug.middleware.shared_data import SharedDataMiddleware
from werkzeug.utils import redirect
from wsgi_app import make_response, render_template, request, wsgi


def create_app(with_static=True):
    new_app = wsgi()

    if with_static:
        new_app.app = SharedDataMiddleware(
            new_app.app,
            {"/static": os.path.join(os.path.dirname(__file__), "static")},
        )

        