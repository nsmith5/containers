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
    podman run -it --rm -v (pwd):/workspace:z --entrypoint /usr/lib/jvm/java-1.8-openjdk/bin/javac toolbox/java $argv
end

function mvn
    podman run -it --rm -v maven:/root/.m2 -v (pwd):/workspace:z toolbox/maven $argv
end

function ruby
    podman run -it --rm -v (pwd):/workspace:z toolbox/ruby $argv
end

function irb
    podman run -it --rm -v (pwd):/workspace:z --entrypoint /usr/local/bin/irb toolbox/ruby $argv
end

function gem
    podman run -it --rm -v gems:/root/.gem -v (pwd):/workspace:z --entrypoint /usr/local/bin/gem toolbox/ruby $argv
end

function bundler
    podman run -it --rm -v gems:/root/.gem -v (pwd):/workspace:z --entrypoint /usr/local/bin/bundler toolbox/ruby $argv
end

function bundle
     podman run -it --rm -v gems:/root/.gem -v (pwd):/workspace:z --entrypoint /usr/local/bin/bundle toolbox/ruby $argv
end
