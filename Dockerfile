FROM java:8
MAINTAINER Cesare Rocchi <c.rocchi@baasbox.com>
WORKDIR /baasbox

RUN wget --content-disposition "http://opensource.baasbox.com/?wpdmact=process&did=MTMuaG90bGluaw=="
RUN unzip baasbox*.zip
RUN rm baasbox*.zip
RUN mv baasbox-*/ baasbox/
RUN chmod +x baasbox/start

EXPOSE 9000
ENTRYPOINT ["bash","baasbox/start"]

