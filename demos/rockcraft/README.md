# Description

This directory contains demos of Java rockcraft plugins and extensions. The demos build [Spring Petclinic](https://github.com/spring-projects/spring-petclinic) rock container.

* [basic](basic) builds without use of plugins. Use chisel slices to install Java runtime.
* [jlink](jlink) uses Java jlink tool to create Java runtime.
* [jlink-plugin](jlink-plugin)  install Java runtime using jlink-plugin.
* [maven-plugin](maven-plugin) uses maven-plugin and jlink-plugin to build the application and install the runtime.
* [spring-framework-extension](spring-framework-extension) demonstrate Spring Framework rockcraft extension

# Install Rockcraft

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

# Building

```
cd <sample-directory>
rockcraft pack
```

This will produce a `.rock` file which can be copied to the docker daemon.

```
rockcraft.skopeo copy oci-archive:<file>.rock docker-daemon:<image-name>:<image-tag>
```

# Running

```
docker run <image-name>:<image-tag> -v
```
