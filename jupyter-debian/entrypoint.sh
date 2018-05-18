#!/bin/bash

case ${ROLE// } in
	"lab")
		su --login jupyter --command "jupyter lab --no-browser --ip=0.0.0.0 --port=8888 --certfile=${JUPYTER_PATH}/ssl/server-cert.pem --keyfile=${JUPYTER_PATH}/ssl/server-key.pem --notebook-dir=/home/jupyter/notebooks"
	;;
	#"hub")
	#	jupyterhub --ip=0.0.0.0 --port=8888 --config=/etc/jupyterhub/jupyterhub_config.py --ssl-key=${JUPYTER_PATH}/ssl/server-key.pem --ssl-cert=${JUPYTER_PATH}/ssl/server-cert.pem
	#;;
	"notebook" | *)
		su --login jupyter --command "jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --certfile=${JUPYTER_PATH}/ssl/server-cert.pem --keyfile=${JUPYTER_PATH}/ssl/server-key.pem --notebook-dir=/home/jupyter/notebooks"
	;;
esac