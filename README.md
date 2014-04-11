rrrr-docker
===========

Dockerfile for rrrr

## To install

    git clone https://github.com/Medusis/rrrr-docker.git
    cd rrrr-docker
    docker build .

## To run

Go to your new docker image  

    docker ps -l
    docker run -i -t <name_of_container_from_previous_command> /bin/bash

Download some gtfs.zip file  

    wget <some_host>/somegtfsfile.zip

Prepare it  

    ./gtfsdb.py somegtfsfile.zip output.gtfsdb
    ./transfers.py output.gtfsdb
    ./timetable.py output.gtfsdb

The output of the last command is a file named `timetable.dat` that is used by rrrr to run queries.

Then you can run `./testerrrr --from-idx=1 --to-idx=2 -v -a -D 2014-01-01T00:00:00 -T timetable.dat`. If you get a trip out of that command it means the thing's working!
