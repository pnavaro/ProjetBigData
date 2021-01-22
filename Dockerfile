FROM jupyter/pyspark-notebook

USER root

COPY . ${HOME}

RUN chown -R ${NB_USER} ${HOME}

RUN pip3 install -r requirements.txt

USER $NB_USER
