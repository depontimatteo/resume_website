FROM python:3.10-slim

RUN apt-get update \
    && apt-get install -y curl \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="${PATH}:/root/.local/bin"
RUN poetry config virtualenvs.create false

COPY poetry.lock poetry.toml pyproject.toml /
RUN poetry install

COPY . /flask
WORKDIR /flask

ENTRYPOINT ["./bin/entrypoint.sh"]