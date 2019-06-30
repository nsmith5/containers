.PHONY: go
go:
	podman build -t go go
	podman image prune
