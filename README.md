#gnucash-docker

This is a simple Dockerfile in order to have gnucash 3.0 installed from source and running on a docker container.

Run this is pretty simple:

1. Clone this repository
1. `cd gnucash-docker`
1. Run `docker build -t="gnucash" .`

After this, an image will be created.

In order to run, just call the docker-compose:

1. Inside the folder: `docker-compose up -d`
1. You can call gnucash running: `docker exec -ti gnucash /bin/bash`
1. Optionally you can call gnucash directly by running `docker exec -ti gnucash /gnucash-cmake/bin/gnucash`

NOTES:
You may need to adjust permissions to the X server host by running `xhost +local:root` 


That is it.
