FROM java:8
MAINTAINER Matteo Mazzoni <matteo@bestmazzo.it>
WORKDIR /baasbox

# 1.0.0-M2
RUN wget --content-disposition "http://www.baasbox.com/?wpdmact=process&did=NTMuaG90bGluaw=="
RUN unzip baasbox*.zip
RUN rm baasbox*.zip
RUN mv baasbox-*/ baasbox/
RUN chmod +x baasbox/start

EXPOSE 9000
ENTRYPOINT ["bash","baasbox/start"]

