# Firefox-ESR container

This is a container to run Firefox-ESR with Java plugin, since main Firefox does not support Java plugin anymore since Firefox Version 52 (released in March 2017).

Firefox-ESR support Java Plugin even in recent versions.

## Install

Build Docker file running the script **build.sh**:

    sh build.sh

Or download the image from registry excecuting:

    docker pull registry.gitlab.com/paulo-ch8/firefox-esr:latest

## Running

Run the script **run.sh**:

    sh run.sh

This script executes a command to share the host's Graphical User Interface with the container.
This is based on the tutorial [by ChristianHenkel on Ros.org](http://wiki.ros.org/docker/Tutorials/GUI). Other ways are described in this tutorial and should be read to ponder which tecnique is more convenient.
