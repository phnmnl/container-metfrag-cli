LABEL software.version=2.4
LABEL version=0.2
LABEL software=metfrag-cli
LABEL Description="MetFrag command line interface."

MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

FROM ubuntu:16.04

# Update & upgrade sources
RUN apt-get -y update
#RUN apt-get -y dist-upgrade

# Install development files needed
RUN apt-get -y install git wget default-jre-headless

# Clean up
RUN apt-get -y clean && apt-get -y autoremove && rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/*

# Install MetFrag
RUN wget -O /usr/local/bin/MetFragCLI.jar http://msbi.ipb-halle.de/~cruttkie/92f73acb731145c73ffa3dfb8fd59581bee0d844963889338c3ec173874b5a5f/MetFrag-2.4.jar

# Define Entry point script
#ENTRYPOINT ["java", "-jar", "/usr/local/bin/MetFragCLI.jar"]

