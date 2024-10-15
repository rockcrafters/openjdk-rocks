# Introduction

This sample demonstrates deploying [Spring Petclinic](https://github.com/spring-projects/spring-petclinic) in a chiselled container.

# Building the sample

1. ``git submodule init && git submodule update --recursive``
2. ``cd spring-petclinic && git apply ../use-ubuntu-jre.17.patch``
3. ``./mvnw compile jib:dockerBuild``

# Running the sample

``docker run -p 8080:8080 --tmpfs /tmp:exec petclinic-chiselled-jib``

# Building using other base containers

Apply `use-temurin-17.patch` to build using `eclipse-temurin:17-jre`.
Apply `use-distroless-17.patch` to build using `gcr.io/distroless/java17`.
