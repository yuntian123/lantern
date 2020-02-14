FROM ubuntu:18.04
MAINTAINER Richard Yu <xiaoqingfengatgm@gmail.com>
# https://github.com/xiaoqingfengATGH/lantern
WORKDIR /root
RUN apt-get update  && \
         apt-get -y install wget libwebkit2gtk-4.0-37 libappindicator3-1 && \
		 wget -O lantern.deb https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-64-bit.deb && \
		 wget -O settings.yaml https://raw.githubusercontent.com/xiaoqingfengATGH/lantern/master/settings.yaml && \
         dpkg -i lantern.deb && \
         rm -rf lantern.deb && \
         apt-get -f install && \
         apt-get clean && \
         rm -rf /var/cache/apt/* /var/lib/apt/lists/* && \
         mkdir /root/.lantern && \
         mv settings.yaml /root/.lantern/settings.yaml

EXPOSE 3128/tcp 8080/tcp 3129/tcp

ENTRYPOINT ["/usr/bin/lantern", "--configdir=/root/.lantern", "--headless=true"]