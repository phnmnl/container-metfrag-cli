#!/bin/sh

# Make sure to add the following entry in /etc/default/grub:
#GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

# building:
docker build -t docker_metfrag_cl .

# Running an example:
docker run -v $PWD:/mnt  docker_metfrag_cl /mnt/Training-048.cfg



