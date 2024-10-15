# Introduction

[java-rockcraft-plugins](https://github.com/rockcrafters/java-rockcraft-plugins) provides Gradle and Maven plugins to build [rocks](https://github.com/rockcrafters#what-is-a-rock) for Java applications.

# Building the plugins

```
git clone https://github.com/rockcrafters/java-rockcraft-plugins
cd java-rockcraft-plugins
./gradew publishToMavenLocal
mvn install
```

# Using the plugins

Apply the plugin:

**Groovy**

    plugins {
        id 'io.github.rockcrafters.rockcraft' version '0.2.1'
    }

**Kotlin**

    plugins {
        id("io.github.rockcrafters.rockcraft") version "0.2.1"
    }


Build the rock image: `gradle build-rock`

Push the rock image `gradle push-rock` to the local docker daemon. The image will use the project's name and version.

Please take a look at [examples](https://github.com/rockcrafters/java-rockcraft-plugins/tree/main/examples) and [plugin documentation](https://github.com/rockcrafters/java-rockcraft-plugins/blob/main/README.md).
