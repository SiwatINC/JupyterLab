FROM siwatinc/python3baseimage
RUN pip install jupyterlab
CMD jupyter lab
