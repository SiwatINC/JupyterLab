FROM siwatinc/nodejsubuntu_base_image
RUN apt-get -y install python3.3 python-pip python3-pip
RUN npm install -g configurable-http-proxy
RUN pip install jupyterlab
RUN pip3 install jupyterhub
RUN pip3 install --upgrade notebook
RUN pip3 install oauthenticator jupyterhub-ldapauthenticator batchspawner 
RUN pip3 install git+https://github.com/jupyterhub/wrapspawner
CMD jupyterhub --ip 0.0.0.0 --port $port
