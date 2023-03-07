FROM python:3.10-slim

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ARG POETRY_VERSION=1.3.2
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | POETRY_VERSION=$POETRY_VERSION python -
ENV PATH="${PATH}:/root/.local/bin"
RUN poetry config virtualenvs.create false

COPY poetry.lock poetry.toml pyproject.toml /
RUN poetry install

COPY . /flask
WORKDIR /flask

ENTRYPOINT ["./bin/entrypoint.sh"]