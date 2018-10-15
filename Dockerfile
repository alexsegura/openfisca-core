FROM python:2.7-slim

# We purposely install NumPy via package manager, for faster builds
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    python-dev \
    git \
    libyaml-dev \
    libyaml-dev \
    python-numpy

COPY setup.py ./
COPY setup.cfg ./

RUN pip install --editable .[dev]
