# silvamerica/docker-terraform

This is heavily inspired by [uzyexe/dockerfile-terraform](https://github.com/uzyexe/dockerfile-terraform) and [sequenceiq/docker-terraform](https://github.com/sequenceiq/docker-terraform)

## What is terraform

Terraform provides a common configuration to launch infrastructure — from physical and virtual servers to email and DNS providers. Once launched, Terraform safely and efficiently changes infrastructure as the configuration is evolved.

Simple file based configuration gives you a single view of your entire infrastructure.

[http://www.terraform.io/](http://www.terraform.io/)

## How to use this image

```
docker run --rm silvamerica/terraform [--version] [--help] <command> [<args>]

```

## Usage

**Keep Terraform Files (*.tf) in /data**

```
docker run --rm -v /data:/data IMAGE COMMAND [options]
```