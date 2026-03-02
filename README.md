# Monthly-built Docker images for macs3

[![Build and publish image](https://github.com/snsinfu/docker-macs3/actions/workflows/ghcr.yml/badge.svg)](https://github.com/snsinfu/docker-macs3/actions/workflows/ghcr.yml)

CLI:

```
docker run -it ghcr.io/snsinfu/docker-macs3:202603 macs3 -h
```

Use in Nextflow:

```groovy
params.macs3_image = "ghcr.io/snsinfu/docker-macs3:202603"

process MACS3 {
    container params.macs3_image
    //
    // ...
    //
    script:
    """
    macs3
    """
}
```
