FROM siwatinc/python3baseimage
RUN pip install jupyterlab
RUN apt-get -y install npm nodejs
RUN npm install -g configurable-http-proxy
RUN python3 -m pip install jupyterhub
RUN python3 -m pip install --upgrade notebook
RUN pip install oauthenticator jupyterhub-ldapauthenticator jupyterhub-kdcauthenticator batchspawner 
RUN pip install git+https://github.com/jupyterhub/wrapspawner
CMD jupyterhub --ip 0.0.0.0 --port $port
