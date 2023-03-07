from api_v1 import parse_json_data
from flask import Blueprint, render_template
from flask_babel import *

html_v1 = Blueprint("html_v1", __name__, template_folder="templates/resume")


@html_v1.route("/", methods=["GET"])
@html_v1.route("/index.html", methods=["GET"])
def index():
    bio = parse_json_data(get_locale())

    return render_template("index.html", lang=get_locale(), bio=bio)
