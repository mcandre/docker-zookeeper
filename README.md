# docker-zookeeper - a Docker container running a continuous Zookeeper node

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-zookeeper/

# EXAMPLE

```
$ make
CONTAINER=$(docker run -d -p 2181:2181 -p 2888:2888 -p 3888:3888 mcandre/docker-zookeeper:3.5.1-alpha)
docker exec $(CONTAINER) zkCli.sh ls /
Connecting to localhost:2181
2015-11-20 00:31:22,532 [myid:] - INFO  [main:Environment@109] - Client environment:zookeeper.version=3.5.1-alpha-1693007, built on 07/28/2015 07:19 GMT
2015-11-20 00:31:22,575 [myid:] - INFO  [main:Environment@109] - Client environment:host.name=35482e0d2969
2015-11-20 00:31:22,575 [myid:] - INFO  [main:Environment@109] - Client environment:java.version=1.7.0_85
2015-11-20 00:31:22,578 [myid:] - INFO  [main:Environment@109] - Client environment:java.vendor=Oracle Corporation
2015-11-20 00:31:22,579 [myid:] - INFO  [main:Environment@109] - Client environment:java.home=/usr/lib/jvm/java-7-openjdk-amd64/jre
2015-11-20 00:31:22,579 [myid:] - INFO  [main:Environment@109] - Client environment:java.class.path=/zookeeper-3.5.1-alpha/bin/../build/classes:/zookeeper-3.5.1-alpha/bin/../build/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-log4j12-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/slf4j-api-1.7.5.jar:/zookeeper-3.5.1-alpha/bin/../lib/servlet-api-2.5-20081211.jar:/zookeeper-3.5.1-alpha/bin/../lib/netty-3.7.0.Final.jar:/zookeeper-3.5.1-alpha/bin/../lib/log4j-1.2.16.jar:/zookeeper-3.5.1-alpha/bin/../lib/jline-2.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-util-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/jetty-6.1.26.jar:/zookeeper-3.5.1-alpha/bin/../lib/javacc.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-mapper-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/jackson-core-asl-1.9.11.jar:/zookeeper-3.5.1-alpha/bin/../lib/commons-cli-1.2.jar:/zookeeper-3.5.1-alpha/bin/../zookeeper-3.5.1-alpha.jar:/zookeeper-3.5.1-alpha/bin/../src/java/lib/*.jar:/zookeeper-3.5.1-alpha/bin/../conf:
2015-11-20 00:31:22,580 [myid:] - INFO  [main:Environment@109] - Client environment:java.library.path=/usr/java/packages/lib/amd64:/usr/lib/x86_64-linux-gnu/jni:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu:/usr/lib/jni:/lib:/usr/lib
2015-11-20 00:31:22,581 [myid:] - INFO  [main:Environment@109] - Client environment:java.io.tmpdir=/tmp
2015-11-20 00:31:22,581 [myid:] - INFO  [main:Environment@109] - Client environment:java.compiler=<NA>
2015-11-20 00:31:22,582 [myid:] - INFO  [main:Environment@109] - Client environment:os.name=Linux
2015-11-20 00:31:22,587 [myid:] - INFO  [main:Environment@109] - Client environment:os.arch=amd64
2015-11-20 00:31:22,589 [myid:] - INFO  [main:Environment@109] - Client environment:os.version=4.0.9-boot2docker
2015-11-20 00:31:22,589 [myid:] - INFO  [main:Environment@109] - Client environment:user.name=root
2015-11-20 00:31:22,590 [myid:] - INFO  [main:Environment@109] - Client environment:user.home=/root
2015-11-20 00:31:22,592 [myid:] - INFO  [main:Environment@109] - Client environment:user.dir=/
2015-11-20 00:31:22,593 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.free=26MB
2015-11-20 00:31:22,601 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.max=247MB
2015-11-20 00:31:22,601 [myid:] - INFO  [main:Environment@109] - Client environment:os.memory.total=30MB
2015-11-20 00:31:22,614 [myid:] - INFO  [main:ZooKeeper@716] - Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.apache.zookeeper.ZooKeeperMain$MyWatcher@50d81341
2015-11-20 00:31:22,690 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1138] - Opening socket connection to server localhost/127.0.0.1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 00:31:22,710 [myid:] - WARN  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1257] - Session 0x0 for server null, unexpected error, closing socket connection and attempting reconnect
java.net.ConnectException: Connection refused
	at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
	at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:744)
	at org.apache.zookeeper.ClientCnxnSocketNIO.doTransport(ClientCnxnSocketNIO.java:355)
	at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1236)
Exception in thread "main" 2015-11-20 00:31:22,827 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@1138] - Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181. Will not attempt to authenticate using SASL (unknown error)
2015-11-20 00:31:22,838 [myid:] - INFO  [main-SendThread(localhost:2181):ClientCnxn$SendThread@980] - Socket connection established, initiating session, client: /0:0:0:0:0:0:0:1:47047, server: localhost/0:0:0:0:0:0:0:1:2181
org.apache.zookeeper.KeeperException$ConnectionLossException: KeeperErrorCode = ConnectionLoss for /
	at org.apache.zookeeper.KeeperException.create(KeeperException.java:99)
	at org.apache.zookeeper.KeeperException.create(KeeperException.java:51)
	at org.apache.zookeeper.ZooKeeper.getChildren(ZooKeeper.java:2255)
	at org.apache.zookeeper.ZooKeeper.getChildren(ZooKeeper.java:2283)
	at org.apache.zookeeper.cli.LsCommand.exec(LsCommand.java:93)
	at org.apache.zookeeper.ZooKeeperMain.processZKCmd(ZooKeeperMain.java:674)
	at org.apache.zookeeper.ZooKeeperMain.processCmd(ZooKeeperMain.java:577)
	at org.apache.zookeeper.ZooKeeperMain.run(ZooKeeperMain.java:351)
	at org.apache.zookeeper.ZooKeeperMain.main(ZooKeeperMain.java:280)
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
