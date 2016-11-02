#!/bin/bash

# Make sure to add the following entry in /etc/default/grub:
#GRUB_CMDLINE_LINUX="cgroup_enable=memory swapaccount=1"

# Name
NAME="phnmnl/metfrag-cli"

# Volumes
VOL="--volume=$PWD:/mnt:rw"

# Run docker
docker run --log-driver=syslog $VOL --name="$(echo ${NAME} | perl -pe 's/.*\///')-run" -i -t $NAME PeakListPath=/mnt/Training-048.txt MetFragDatabaseType=PubChem IonizedPrecursorMass=345.0874 DatabaseSearchRelativeMassDeviation=5 FragmentPeakMatchAbsoluteMassDeviation=0.001 FragmentPeakMatchRelativeMassDeviation=5 PrecursorIonMode=-1 IsPositiveIonMode=FALSE MetFragScoreTypes=FragmenterScore MetFragScoreWeights=1.0 MetFragCandidateWriter=CSV SampleName=Training-048 ResultsPath=/mnt MaximumTreeDepth=1 MetFragPreProcessingCandidateFilter=UnconnectedCompoundFilter
docker rm $(echo ${NAME} | perl -pe 's/.*\///')-run


# Detach/Attach docker
# detach: CTRL-P + CTRL-Q

# Start and attach docker (you can also use docker start -ai instead)
#docker start ${NAME}-run
#docker attach ${NAME}-run

# Start shell inside running docker
#docker exec -i -t ${NAME}-run /bin/bash

# Start failed container with different entrypoint
#docker run -ti --entrypoint=/bin/bash ${NAME}-run

# Commit changes locally
#docker commit ${NAME}-run

# Show docker container and images
#docker ps -a
#docker images

# Delete container and image
#docker rm ${NAME}-run
#docker rmi ${NAME}

# Delete exited containers
#docker rm $(docker ps -a -f status=exited | grep -v CONTAINER\ ID | awk '{print $1}')

# Delete intermediate/untagged images
#docker rmi $(docker images | grep '^<none>' | awk '{print $3}')

