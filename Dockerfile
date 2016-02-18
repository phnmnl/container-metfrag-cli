FROM ubuntu

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL Description="Install MetFrag 2.2 command line in Docker."

# update & upgrade sources
RUN apt-get -y update
RUN apt-get -y dist-upgrade

# install development files needed
RUN apt-get -y install git wget default-jre-headless

# clean up
RUN apt-get -y clean && apt-get -y autoremove && rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/*

# install MetFrag
RUN wget -O /usr/local/bin/MetFrag2.2-CL.jar http://msbi.ipb-halle.de/~cruttkie/metfrag/MetFrag2.2-CL.jar

# Define Entry point script
ENTRYPOINT ["java", "-jar", "/usr/local/bin/MetFrag2.2-CL.jar"]
