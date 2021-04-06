#!/bin/bash

IMAGE=singularity-sra-toolkit-2.11.0.sif
DEFINITION=Singularity

singularity build --remote $IMAGE $DEFINITION
