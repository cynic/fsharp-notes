FROM ubuntu:14.04
MAINTAINER Smeagol <cinyc.s@gmail.com>
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 136221EE520DDFAF0A905689B9316A7BC7917B12 && echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main" > /etc/apt/sources.list.d/nodejs.list
RUN apt-get update && apt-get install -y nodejs git
RUN npm install -g connect serve-static coffee-script
RUN npm link connect serve-static coffee-script
EXPOSE 3000
ADD server.coffee /fsharp-notes/
ADD public /fsharp-notes/public/
RUN coffee -c /fsharp-notes/public/impresst.js/impresst.coffee
WORKDIR /fsharp-notes
USER nobody
ENTRYPOINT ["coffee", "server.coffee"]
