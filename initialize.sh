echo "Starting Container Initialization Script."
if [ -z "$(ls -A /config)" ]; then
   echo "Initializing . . ."
   jupyterhub --generate-config -f /config/jupyerhub_config.py
   echo "c.JupyterHub.config_file = 'jupyterhub_config.py'" >> /config/jupyterhub_config.py
   cd /config && jupyterhub --ip 0.0.0.0 --port $port --db='$db' --config='/config/jupyterhub_config.py'
   adduser --home /config/$user $user
   exit 0
else
   echo "Already Initiated, Starting JupyterLab"
   cd /config && jupyterhub --ip 0.0.0.0 --port $port --db='$db' --config='/config/jupyterhub_config.py'
   exit 0
fi
