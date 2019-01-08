FROM siwatinc/python3baseimage
RUN pip install jupyterlab
RUN apt-get -y install npm nodejs python3.3-dev
RUN npm install -g configurable-http-proxy
RUN pip install jupyterhub
RUN pip install --upgrade notebook
RUN pip install oauthenticator jupyterhub-ldapauthenticator jupyterhub-kdcauthenticator batchspawner 
RUN pip install git+https://github.com/jupyterhub/wrapspawner
CMD jupyterhub --ip 0.0.0.0 --port $port
