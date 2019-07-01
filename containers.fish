function go
    podman run -it --rm -v go:/go -v (pwd):/workspace:z toolbox/go $argv
end

function python
    podman run -it --rm -v python:/root/.local -v (pwd):/workspace:z toolbox/python $argv
end

function julia
    podman run -it --rm -v julia:/root/.julia -v (pwd):/workspace:z toolbox/julia $argv
end

function java
    podman run -it --rm -v (pwd):/workspace:z toolbox/java $argv
end

function javac
    podman run -it --rm -v (pwd):/workspace:z --entrypoint /usr/bin/javac toolbox/java $argv
end

function mvn
    podman run -it --rm -v maven:/root/.m2 -v (pwd):/workspace:z toolbox/maven $argv
end
