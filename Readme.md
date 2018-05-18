# BAMCIS Jupyter Notebook Docker Containers

This repo contains Jupyter Notebook Docker Containers running both Alpine Linux and
Debian Linux. They are useful as a standalone lab environment to quickly get started
with Python3 and Jupyter Notebooks.

## Description

The container will run a single user setup of either a Jupyter Notebook or Jupyter Lab. The role can be
specified as an environment variable, `ROLE` and defaults to `notebook`. When the container starts it will
print out the access tokens required to access the server.

The containers have Python3 installed, with SciPy, NumPy, and Matplotlib. The Debian variant has miniconda 
installed.