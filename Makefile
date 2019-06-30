all: go python

.PHONY: go python
go:
	podman build -t go go
	podman image prune

python:
	podman build -t python python
	podman image prune
