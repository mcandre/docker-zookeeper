FROM java:7
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV ZK_HOME /zookeeper-3.3.6
ENV PATH $PATH:$ZK_HOME/bin
ADD http://apache.mirrors.lucidnetworks.net/zookeeper/zookeeper-3.3.6/zookeeper-3.3.6.tar.gz /zookeeper-3.3.6.tar.gz
RUN tar xvf /zookeeper-3.3.6.tar.gz && \
    cp /zookeeper-3.3.6/conf/zoo_sample.cfg /zookeeper-3.3.6/conf/zoo.cfg
EXPOSE 2181 2888 3888
ENTRYPOINT /zookeeper-3.3.6/bin/zkServer.sh start-foreground
