#Pull base image
FROM ubuntu
#Install Apache
RUN apt-get update  && apt-get install apache2 apache2-utils 
#Define default port
EXPOSE 80
ENTRYPOINT [ "/usr/sbin/apache2ctl" ]
#Define default command
CMD [ "-D", "FOREGROUND" ]