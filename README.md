## OpenJDK ROCKs

This repository contains demos of Ubuntu OpenJDK-based ROCK containers.

* [demos/rockcraft](demos/rockcraft/) demonstrate using rockcraft to build and deploy a Java application.
* [demos/java-rockcraft-plugins](https://github.com/rockcrafters/java-rockcraft-plugins/tree/main/examples)  demonstrate Gradle rockcraft plugin.
* [demos/ubuntu-jre](demos/ubuntu-jre/) demonstrate deploying Java application using [ubuntu/jre](https://hub.docker.com/r/ubuntu/jre) image.


## Try building the [rock](https://github.com/rockcrafters#what-is-a-rock) images for Java Applications

The steps below will install all prerequisites to run samples or try building rocks for your application on Ubuntu system.

### Step 1: install rockcraft

Those samples require rockcraft features [not yet merged](https://github.com/canonical/rockcraft/compare/main...vpa1977:rockcraft:experimental-java?expand=1) into main.
Please install rockcraft from [this branch](https://github.com/vpa1977/rockcraft/tree/experimental-java):
```
snap install snapcraft
git clone -b experimental-java https://github.com/vpa1977/rockcraft
cd rockcraft
# ensure that installed version of rockcraft is removed
snap remove rockcraft
snapcraft
snap install --dangerous --classic *.snap
```

### Step 2: install Gradle plugin

```
git clone https://github.com/rockcrafters/java-rockcraft-plugins
cd java-rockcraft-plugins
./gradew publishToMavenLocal
mvn install
```

### Step 3: install Docker

```
sudo snap install docker
```
