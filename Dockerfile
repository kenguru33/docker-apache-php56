FROM ubuntu:16.04
RUN apt-get update
RUN apt-get --yes upgrade
RUN apt-get --yes install software-properties-common python-software-properties
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --allow-unauthenticated php5.6 php5.6-mysql
CMD apachectl -D FOREGROUND
EXPOSE 80
