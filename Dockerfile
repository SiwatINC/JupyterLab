FROM siwatinc/nodejsubuntu_base_image
RUN pip install jupyterlab
RUN apt-get -y install python3.3 python-pip
RUN npm install -g configurable-http-proxy
RUN pip install jupyterhub
RUN pip install --upgrade notebook
RUN pip install oauthenticator jupyterhub-ldapauthenticator jupyterhub-kdcauthenticator batchspawner 
RUN pip install git+https://github.com/jupyterhub/wrapspawner
CMD jupyterhub --ip 0.0.0.0 --port $port
