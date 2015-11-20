# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:3.5.1-alpha)
docker exec $CONTAINER sh -c 'echo "create /dog moon" | zkCli.sh'
Connecting to localhost:2181
2015-11-20 01:09:23,457 [myid:] - INFO  [main:Environment@109] - Client environment:zookeeper.version=3.5.1-alpha-1693007, built on 07/28/2015 07:19 GMT
2015-11-20 01:09:23,477 [myid:] - INFO  [main:Environment@109] - Client environment:host.name=fb13fb2a3c2d
2015-11-20 01:09:23,479 [myid:] - INFO  [main:Environment@109] - Client environment:java.version=1.7.0_85
2015-11-20 01:09:23,481 [myid:] - INFO  [main:Environment@109] - Client environment:java.vendor=Oracle Corporation
2015-11-20 01:09:23,482 [myid:] - INFO  [main:Environment@109] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 01:09:23,482 [myid:] - INFO  [main:Environment@109] - Client environment:java.class.path=/zookeeper-3.5.1-alpha/bin/../build/classes:/zookeeper-3.5.1-alpha/bin/../build/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-log4j12-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-api-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/servlet-api-2.5-20081211.jar:/zookeeper-3.5.1-alpha/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.5.1-alpha/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.5.1-alpha/bin/../lib/jline-2.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-util-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/javacc.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-mapper-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-core-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/commons-cli-1.2.jar:/zookeeper-3.5.1-alpha/bin/../zookeeper-3.5.1-alpha.jar:/zookeeper-3.5.1-alpha/bin/../src/java/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../conf:
2015-11-20 01:09:23,483 [myid:] - INFO  [main:Environment@109] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 01:09:23,483 [myid:] - INFO  [main:Environment@109] - Client environment:java.io.tmpdir=/tmp
2015-11-20 01:09:23,483 [myid:] - INFO  [main:Environment@109] - Client environment:java.compiler=<NA>
2015-11-20 01:09:23,484 [myid:] - INFO  [main:Environment@109] - Client environment:os.name=Linux
2015-11-20 01:09:23,484 [myid:] - INFO  [main:Environment@109] - Client environment:os.arch=amd64
2015-11-20 01:09:23,485 [myid:] - INFO  [main:Environment@109] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 01:09:23,485 [myid:] - INFO  [main:Environment@109] - Client environment:user.name=root
2015-11-20 01:09:23,485 [myid:] - INFO  [main:Environment@109] - Client environment:user.home=/root
2015-11-20 01:09:23,486 [myid:] - INFO  [main:Environment@109] - Client environment:user.dir=/
2015-11-20 01:09:23,486 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.free=26MB
2015-11-20 01:09:23,492 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.max=247MB
2015-11-20 01:09:23,492 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.total=30MB
2015-11-20 01:09:23,499 [myid:] - INFO  [main:ZooKeeper@716] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@50d81341
Welcome to ZooKeeper!
2015-11-20 01:09:23,583 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1138] - Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 01:09:23,638 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@980] - Socket connection established, initiating session, client: /127.0.0.1:43796, server: localhost/127.0.0.1:2181
JLine support is enabled
2015-11-20 01:09:23,702 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1400] - Session establishment complete on server localhost/127.0.0.1:2181, sessionid = 0x100004e82d50000, negotiated timeout = 30000

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zk: localhost:2181(CONNECTED) 0] create /dog moon
Created /dog
[zk: localhost:2181(CONNECTED) 1]
docker exec $(CONTAINER) sh -c 'echo "get /dog" | zkCli.sh'
/usr/bin/java
Connecting to localhost:2181
2015-11-20 01:09:24,551 [myid:] - INFO  [main:Environment@109] - Client environment:zookeeper.version=3.5.1-alpha-1693007, built on 07/28/2015 07:19 GMT
2015-11-20 01:09:24,560 [myid:] - INFO  [main:Environment@109] - Client environment:host.name=fb13fb2a3c2d
2015-11-20 01:09:24,560 [myid:] - INFO  [main:Environment@109] - Client environment:java.version=1.7.0_85
2015-11-20 01:09:24,563 [myid:] - INFO  [main:Environment@109] - Client environment:java.vendor=Oracle Corporation
2015-11-20 01:09:24,564 [myid:] - INFO  [main:Environment@109] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 01:09:24,564 [myid:] - INFO  [main:Environment@109] - Client environment:java.class.path=/zookeeper-3.5.1-alpha/bin/../build/classes:/zookeeper-3.5.1-alpha/bin/../build/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-log4j12-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-api-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/servlet-api-2.5-20081211.jar:/zookeeper-3.5.1-alpha/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.5.1-alpha/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.5.1-alpha/bin/../lib/jline-2.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-util-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/javacc.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-mapper-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-core-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/commons-cli-1.2.jar:/zookeeper-3.5.1-alpha/bin/../zookeeper-3.5.1-alpha.jar:/zookeeper-3.5.1-alpha/bin/../src/java/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../conf:
2015-11-20 01:09:24,564 [myid:] - INFO  [main:Environment@109] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 01:09:24,565 [myid:] - INFO  [main:Environment@109] - Client environment:java.io.tmpdir=/tmp
2015-11-20 01:09:24,565 [myid:] - INFO  [main:Environment@109] - Client environment:java.compiler=<NA>
2015-11-20 01:09:24,568 [myid:] - INFO  [main:Environment@109] - Client environment:os.name=Linux
2015-11-20 01:09:24,568 [myid:] - INFO  [main:Environment@109] - Client environment:os.arch=amd64
2015-11-20 01:09:24,568 [myid:] - INFO  [main:Environment@109] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 01:09:24,569 [myid:] - INFO  [main:Environment@109] - Client environment:user.name=root
2015-11-20 01:09:24,569 [myid:] - INFO  [main:Environment@109] - Client environment:user.home=/root
2015-11-20 01:09:24,569 [myid:] - INFO  [main:Environment@109] - Client environment:user.dir=/
2015-11-20 01:09:24,569 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.free=26MB
2015-11-20 01:09:24,573 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.max=247MB
2015-11-20 01:09:24,573 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.total=30MB
2015-11-20 01:09:24,577 [myid:] - INFO  [main:ZooKeeper@716] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@50d81341
Welcome to ZooKeeper!
2015-11-20 01:09:24,616 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1138] - Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 01:09:24,626 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@980] - Socket connection established, initiating session, client: /127.0.0.1:43797, server: localhost/127.0.0.1:2181
JLine support is enabled
2015-11-20 01:09:24,649 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1400] - Session establishment complete on server localhost/127.0.0.1:2181, sessionid = 0x100004e82d50001, negotiated timeout = 30000

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zk: localhost:2181(CONNECTED) 0] get /dog
moon
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
