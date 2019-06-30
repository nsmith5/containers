function go
    podman run -it --rm -v go:/go -v (pwd):/workspace:z go $argv
end

function ruby
end
