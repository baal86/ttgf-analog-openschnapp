xhost + 127.0.0.1
podman run --rm -it --network=host --env-file container.mac.env -v /Users/mathias/Desktop:/foss/designs docker.io/hpretl/iic-osic-tools:2026.08
