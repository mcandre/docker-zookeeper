# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:latest)
docker exec $CONTAINER sh -c 'echo "create /dog moon" | zkCli.sh'
Connecting to localhost:2181
2015-11-20 00:55:28,052 [myid:] - INFO  [main:Environment@100] - Client environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
2015-11-20 00:55:28,055 [myid:] - INFO  [main:Environment@100] - Client environment:host.name=79bf87aa7050
2015-11-20 00:55:28,055 [myid:] - INFO  [main:Environment@100] - Client environment:java.version=1.7.0_85
2015-11-20 00:55:28,057 [myid:] - INFO  [main:Environment@100] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:55:28,058 [myid:] - INFO  [main:Environment@100] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:55:28,058 [myid:] - INFO  [main:Environment@100] - Client environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
2015-11-20 00:55:28,059 [myid:] - INFO  [main:Environment@100] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:55:28,059 [myid:] - INFO  [main:Environment@100] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:55:28,060 [myid:] - INFO  [main:Environment@100] - Client environment:java.compiler=<NA>
2015-11-20 00:55:28,060 [myid:] - INFO  [main:Environment@100] - Client environment:os.name=Linux
2015-11-20 00:55:28,061 [myid:] - INFO  [main:Environment@100] - Client environment:os.arch=amd64
2015-11-20 00:55:28,061 [myid:] - INFO  [main:Environment@100] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:55:28,062 [myid:] - INFO  [main:Environment@100] - Client environment:user.name=root
2015-11-20 00:55:28,062 [myid:] - INFO  [main:Environment@100] - Client environment:user.home=/root
2015-11-20 00:55:28,063 [myid:] - INFO  [main:Environment@100] - Client environment:user.dir=/
2015-11-20 00:55:28,064 [myid:] - INFO  [main:ZooKeeper@438] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@634fd55e
2015-11-20 00:55:28,097 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@975] - Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181. Will not attempt to authenticate using SASL (unknown error)
Welcome to ZooKeeper!
2015-11-20 00:55:28,122 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@852] - Socket connection established to localhost/0:0:0:0:0:0:0:1:2181, initiating session
JLine support is enabled
2015-11-20 00:55:28,166 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1235] - Session establishment complete on server localhost/0:0:0:0:0:0:0:1:2181, sessionid = 0x151226366cb0000, negotiated timeout = 30000

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zk: localhost:2181(CONNECTED) 0] create /dog moon
Created /dog
docker exec $CONTAINER sh -c 'echo "get /dog" | zkCli.sh'
Connecting to localhost:2181
2015-11-20 00:55:35,262 [myid:] - INFO  [main:Environment@100] - Client environment:zookeeper.version=3.4.6-1569965, built on 02/20/2014 09:09 GMT
2015-11-20 00:55:35,265 [myid:] - INFO  [main:Environment@100] - Client environment:host.name=79bf87aa7050
2015-11-20 00:55:35,266 [myid:] - INFO  [main:Environment@100] - Client environment:java.version=1.7.0_85
2015-11-20 00:55:35,268 [myid:] - INFO  [main:Environment@100] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:55:35,269 [myid:] - INFO  [main:Environment@100] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:55:35,269 [myid:] - INFO  [main:Environment@100] - Client environment:java.class.path=/zookeeper-3.4.6/bin/../build/classes:/zookeeper-3.4.6/bin/../build/lib/*.jar:/zookeeper-3.4.6/bin/../lib/slf4j-log4j12-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/slf4j-api-1.6.1.jar:/zookeeper-3.4.6/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.4.6/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.4.6/bin/../lib/jline-0.9.94.jar:/zookeeper-3.4.6/bin/../zookeeper-3.4.6.jar:/zookeeper-3.4.6/bin/../src/java/lib/*.jar:/zookeeper-3.4.6/bin/../conf:
2015-11-20 00:55:35,270 [myid:] - INFO  [main:Environment@100] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:55:35,270 [myid:] - INFO  [main:Environment@100] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:55:35,270 [myid:] - INFO  [main:Environment@100] - Client environment:java.compiler=<NA>
2015-11-20 00:55:35,271 [myid:] - INFO  [main:Environment@100] - Client environment:os.name=Linux
2015-11-20 00:55:35,271 [myid:] - INFO  [main:Environment@100] - Client environment:os.arch=amd64
2015-11-20 00:55:35,272 [myid:] - INFO  [main:Environment@100] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:55:35,273 [myid:] - INFO  [main:Environment@100] - Client environment:user.name=root
2015-11-20 00:55:35,273 [myid:] - INFO  [main:Environment@100] - Client environment:user.home=/root
2015-11-20 00:55:35,273 [myid:] - INFO  [main:Environment@100] - Client environment:user.dir=/
2015-11-20 00:55:35,275 [myid:] - INFO  [main:ZooKeeper@438] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@634fd55e
2015-11-20 00:55:35,304 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@975] - Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error)
Welcome to ZooKeeper!
JLine support is enabled
2015-11-20 00:55:35,336 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@852] - Socket connection established to localhost/127.0.0.1:2181, initiating session
2015-11-20 00:55:35,348 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1235] - Session establishment complete on server localhost/127.0.0.1:2181, sessionid = 0x151226366cb0001, negotiated timeout = 30000

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zk: localhost:2181(CONNECTED) 0] get /dog
moon
cZxid = 0x2
ctime = Fri Nov 20 00:55:28 UTC 2015
mZxid = 0x2
mtime = Fri Nov 20 00:55:28 UTC 2015
pZxid = 0x2
cversion = 0
dataVersion = 0
aclVersion = 0
ephemeralOwner = 0x0
dataLength = 4
numChildren = 0
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
