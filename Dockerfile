FROM java:8
MAINTAINER Matteo Mazzoni <matteo@bestmazzo.it>
WORKDIR /baasbox

RUN wget --content-disposition "http://www.baasbox.com/?wpdmact=process&did=NTUuaG90bGluaw=="
RUN unzip baasbox*.zip
RUN rm baasbox*.zip
RUN mv baasbox-*/ baasbox/
RUN chmod +x baasbox/start
EXPOSE 9000
ENTRYPOINT baasbox/start

