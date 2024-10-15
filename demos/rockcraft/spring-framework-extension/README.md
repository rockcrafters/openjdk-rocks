# How to package a rock using Spring Framework rockcraft extension

1. Install [rockcraft](../rockcraft#install-rockcraft).
2. Clone or create a Spring Boot project: `git clone https://github.com/spring-projects/spring-petclinic.git`.
3. Enter project directory: `cd spring-petclinic`
4. Initialize rockcraft.yaml: `rockcraft init --profile spring-boot-framework`
5. Pack the rock: `ROCKCRAFT_ENABLE_EXPERIMENTAL_EXTENSIONS=1 rockcraft pack`
6. Copy and run the application:
```
rockcraft.skopeo copy oci-archive:spring-petclinic_0.1_amd64.rock docker-daemon:spring-petclinic:latest
docker run spring-petclinic exec /usr/bin/java -jar /jars/spring-petclinic-3.3.0-SNAPSHOT.jar
```

# Customizing the rock

Teh generated rockcraft.yaml file contains instructions on customizing the rock.
[rockcraft.yaml](rockcraft.yaml) in the current directory provides an example of overriding the build step and defining the startup service.
