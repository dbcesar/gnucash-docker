#gnucash-docker

This is a simple Dockerfile in order to have gnucash 3.0 installed from source and running on a docker container.

Run this is pretty simple:

1. Clone this repository
1. `cd gnucash-docker`
1. Run `docker build -t="gnucash" .`

After this, an image will be created.

In order to run, just call the docker-compose:

1. Inside the folder: `docker-compose up`

That is it.
