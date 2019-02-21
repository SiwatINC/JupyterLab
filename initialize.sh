echo "Starting Container Initialization Script."
if [ -z "$(ls -A /config)" ]; then
   echo "Initializing . . ."
   mkdir -p /config/data
   cd /config && wget 'https://raw.githubusercontent.com/SiwatINC/JupyterLab/master/jupyerhub_config.py'
   echo admin:$password | chpasswd
   cd /config && jupyterhub --ip 0.0.0.0 --port $port --db='$db' --config='/config/jupyterhub_config.py'
   exit 0
else
   echo "Already Initiated, Starting JupyterLab"
   echo admin:$password | chpasswd
   cd /config && jupyterhub --ip 0.0.0.0 --port $port --db='$db' --config='/config/jupyterhub_config.py'
   exit 0
fi
