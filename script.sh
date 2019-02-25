#!/bin/bash

docker build . -t codelab

docker run -it --net=host --rm codelab