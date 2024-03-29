FROM kasmweb/core-ubuntu-focal:1.11.0
USER root
ENV HOME /home/kasm-default-profile
ENV STARTUPDIR /dockerstartup
ENV INST_SCRIPTS $STARTUPDIR/install
WORKDIR $HOME


## Customize Container Here #####

RUN apt-get update \
    && apt-get install default-jre -y
    





####### End Customizations ####
RUN chown 1000;0 $HOME
RUN $STARTUPDIR/set_user_permission.sh $HOME
ENV HOME /home/kasm-user
WORKDIR $HOME
RUN mkdir -p $HOME && chown -R 1000:0 $HOME
USER 1000


