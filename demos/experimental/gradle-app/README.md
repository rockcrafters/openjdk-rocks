# Building

Build the rock. The rockcraft.yaml will be found in `build/rockcraft.yaml`

`./gradlew build-rock`

# Running

`rockcraft.skopeo copy oci-archive:build/rock/app2_0.0.1-SNAPSHOT_amd64.rock docker-daemon:app2:lates`
`docker run app2 -v`
