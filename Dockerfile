# -*- coding: utf-8 -*-
FROM python:3.5

ENV TERM linux

ARG SPARK_VERSION=spark-2.1.0
ARG SPARK_DIST=spark-2.1.0-bin-hadoop2.7
ARG SPARK_MIRROR=mirrors.ocf.berkeley.edu
ENV SPARK_HOME /spark

RUN set -ex \
    && apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y openjdk-7-jdk \
    && apt-get clean \
    && wget http://${SPARK_MIRROR}/apache/spark/${SPARK_VERSION}/${SPARK_DIST}.tgz \
    && tar -xzf ${SPARK_DIST}.tgz \
    && mv ${SPARK_DIST} ${SPARK_HOME}/ \
    && useradd -ms /bin/bash -d ${SPARK_HOME} spark \
    && chown spark: -R ${SPARK_HOME}

EXPOSE 4040

RUN pip install ipython

USER spark
WORKDIR /spark
COPY conf/log4j.properties conf/log4j.properties
