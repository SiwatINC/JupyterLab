FROM siwatinc/nodejsubuntu_base_image
RUN apt-get -y install python3.3 python-pip python3-pip
RUN npm install -g configurable-http-proxy
RUN pip install ipyparallel jupyterlab
RUN pip3 install jupyterhub
RUN pip3 install --upgrade notebook
RUN pip3 install oauthenticator jupyterhub-ldapauthenticator batchspawner 
RUN pip3 install git+https://github.com/jupyterhub/wrapspawner
RUN ipcluster nbextension enable
RUN jupyter nbextension install --sys-prefix --py ipyparallel && jupyter nbextension enable --sys-prefix --py ipyparallel && jupyter serverextension enable --sys-prefix --py ipyparallel
CMD cd /config && jupyterhub --ip 0.0.0.0 --port $port
