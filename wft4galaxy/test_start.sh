#!/bin/sh

# http://wft4galaxy.readthedocs.io/en/latest/

export GALAXY_URL="http://public.phenomenal-h2020.eu"
export GALAXY_API_KEY="2596c5343eee3fd8caa7d5de57a5f587"

wft4galaxy-docker --debug -f ./metfrag.yaml --enable-logger --server $GALAXY_URL --api-key $GALAXY_API_KEY

