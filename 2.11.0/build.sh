#!/bin/bash

IMAGE=singularity-sra-toolkit-2.11.0.sif
DEFINITION=Singularity

sudo singularity build $IMAGE $DEFINITION
