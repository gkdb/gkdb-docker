FROM jupyterhub/jupyterhub:0.7.2

#RUN apt-get update && apt-get install -y \
#  vim

RUN pip --no-cache-dir install jupyter
RUN pip install --no-cache-dir peewee \
  psycopg2 \
  numpy \
  scipy \
  pandas

ADD jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
RUN cd /srv/jupyterhub/ && git clone https://github.com/gkdb/ldapauthenticator.git
RUN cd /srv/jupyterhub/ldapauthenticator && pip install -e .

RUN cd /srv/jupyterhub/ && git clone https://github.com/gkdb/gkdb/
RUN cd /srv/jupyterhub/gkdb && pip install -e .
