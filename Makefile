all: go python julia java mvn ruby

.PHONY: go python julia java mvn ruby
go:
	podman build -t toolbox/go go
	podman image prune

python:
	podman build -t toolbox/python python
	podman image prune

julia:
	podman build -t toolbox/julia julia
	podman image prune

java:
	podman build -t toolbox/java java
	podman image prune

mvn:
	podman build -t toolbox/maven maven
	podman image prune

ruby:
	podman build -t toolbox/ruby ruby
	podman image prune
