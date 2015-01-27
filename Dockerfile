FROM ubuntu:14.04
MAINTAINER Smeagol <cinyc.s@gmail.com>
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 136221EE520DDFAF0A905689B9316A7BC7917B12 && echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu trusty main" > /etc/apt/sources.list.d/nodejs.list
RUN apt-get update && apt-get install -y nodejs git
RUN npm install -g connect coffee-script
RUN git clone https://github.com/cynic/fsharp-notes.git
#RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
#RUN echo "deb http://download.mono-project.com/repo/debian wheezy main" | tee /etc/apt/sources.list.d/mono-xamarin.list
#RUN apt-get update
#RUN apt-get install -y mono-complete fsharp
