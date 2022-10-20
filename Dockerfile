FROM httpd:latest 
MAINTAINER Nikos Kontothanasis "nikos.kontothanasis@gmail.com"
RUN apt-get update -y 
RUN apt-get install git -y && apt-get install unzip -y && apt-get install nano -y
RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index_old.html
COPY index.html /usr/local/apache2/htdocs/index.html
COPY res.zip .
RUN unzip res.zip -d /usr/local/apache2/htdocs/