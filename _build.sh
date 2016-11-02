#!/bin/bash

# Name
NAME="phnmnl/metfrag-cli"

# CPU options
CPUS="8"
CPU_SHARES="--cpu-shares=${CPUS}"
CPU_SETS="--cpuset-cpus=0-$[${CPUS}-1]"
CPU_MEMS="--cpuset-mems=0"
MEM="--memory=24g"

# Build docker
docker build --no-cache --rm=true --tag=$NAME .

