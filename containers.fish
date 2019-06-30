function go
    podman run -it --rm -v go:/go -v (pwd):/workspace:z go $argv
end

function python
    podman run -it --rm -v python:/root/.local:z python $argv
end
