FROM jupyterhub/jupyterhub:0.7.2

RUN pip install jupyter
#RUN apt-get update && apt-get install -y \
#  vim

ADD jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
RUN cd /srv/jupyterhub/ && git clone https://github.com/gkdb/ldapauthenticator.git
RUN cd /srv/jupyterhub/ldapauthenticator && pip install -e .
