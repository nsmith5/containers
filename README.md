# Containers

This repository is hosts a library of OCI container images that are useful for
containerized software development workflows. Each image hosts a different SDK.
Each image also has a [fish](https://fishshell.com) script and bash script to
launch the image in a development environment.

The idea is to hosts dependencies (gems, libraries etc..) in a volume and to
mount the current directory (relabeled) into the images working directory. The
end result is to simulate running an SDK binary (julia, go, ruby etc) in the
current directory. The difference is that all packages are isolated in a
container volume and the container can only read the current directory.

## Usage

To get started build the image corresponding to the SDK you want to use and
source the shell script.

```
$ make go               # or simply 'make' for all SDKs
$ source containers.sh  # or containers.fish for fish shell
$ go version            # go running in container!
go version go1.12.6 linux/amd64
```

## Caveats

Python is a little weird. `pip install` stuff with the `--user` flag for
persistance as the storage volume is mounted in `/root/.local` instead of the
root `site-packages`.

## Why

Great question! Do you read the source code of everything you `pip install`
before you `pip install` it? Yeah me neither. This way I don't have to think to
hard about it because the packages can only access the directory I'm working
in. Checkout
[this blog post](https://www.nfsmith.ca/articles/containerized_development/)
for more information.
