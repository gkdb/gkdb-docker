FROM jupyterhub/jupyterhub:0.8.1

RUN apt-get update && apt-get install -y \
  vim \
  postgresql-client-9.4

RUN pip --no-cache-dir install jupyter
RUN pip install --no-cache-dir \
  peewee \
  psycopg2 \
  numpy \
  scipy \
  matplotlib \
  pandas

# Install Octave kernel
RUN apt-get update && apt-get install -y \
  octave \
  gnuplot

RUN pip install --no-cache-dir \
  octave_kernel
RUN python -m octave_kernel.install

RUN cd /srv/jupyterhub/ && git clone https://github.com/gkdb/ldapauthenticator.git
RUN cd /srv/jupyterhub/ldapauthenticator && pip install -e .

RUN cd /srv/jupyterhub/ && git clone https://github.com/gkdb/gkdb/
RUN cd /srv/jupyterhub/gkdb && pip install -e .

ADD jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
COPY examples_peewee.ipynb /srv/jupyterhub/

#RUN apt-get install libpam-ldapd

