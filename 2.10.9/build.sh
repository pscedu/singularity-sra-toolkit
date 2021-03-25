#!/bin/bash

IMAGE=singularity-sra-toolkit-2.10.9.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
