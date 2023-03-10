import json
import os

from flask import Blueprint, Response

api_v1 = Blueprint("api_v1", __name__)


@api_v1.route("/get_bio/<string:language_id>", methods=["GET"])
def get_bio(language_id):
    data = parse_json_data(language_id)

    resp = Response(json.dumps(data), status=200, mimetype="application/json")
    return resp


def parse_json_data(language_id):
    data = ""
    with open(
        (os.path.dirname(__file__)) + "/json/bio_%s.json" % language_id,
        encoding="utf-8",
    ) as json_file:
        data = json.load(json_file)

    return data
