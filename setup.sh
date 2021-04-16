# following docs given here: https://github.com/franzinc/docker-agraph
# Volume for AllegroGraph data and log files.
docker volume create agdata

# Volume for AllegroGraph config files.

docker volume create agconfig

# Start the container with a shared memory size of 1 Gb, which is
# a required minimum.
docker-compose up -d

