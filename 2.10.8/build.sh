#!/bin/bash

IMAGE=singularity-sra-toolkit-2.10.8.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
