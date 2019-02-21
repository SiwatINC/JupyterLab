FROM siwatinc/nodejsubuntu_base_image
RUN apt-get -y install python3.3 python-pip python3-pip
RUN pip install --upgrade pip
RUN npm install -g configurable-http-proxy
RUN pip install jupyterlab ipyparallel
RUN pip3 install jupyterhub
RUN pip3 install --upgrade notebook
RUN pip3 install oauthenticator jupyterhub-ldapauthenticator batchspawner 
RUN pip3 install git+https://github.com/jupyterhub/wrapspawner
CMD rm ./initialize.sh | : && wget https://raw.githubusercontent.com/SiwatINC/JupyterLab/master/initialize.sh && chmod +x ./initialize.sh && ./initialize.sh
