FROM continuumio/miniconda3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y --no-install-recommends install git

RUN conda install -y python=3.8 numpy scipy

COPY . /DaPars2

ENV PATH="/DaPars2/src/:$PATH"