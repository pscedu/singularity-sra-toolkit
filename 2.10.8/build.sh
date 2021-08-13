#!/bin/bash

IMAGE=singularity-sra-toolkit-2.10.8.sif
DEFINITION#!/bin/bash

# Copyright © 2021 Pittsburgh Supercomputing Center.
# All Rights Reserved.

PACKAGE=sra-toolkit
VERSION=2.10.8
IMAGE=singularity-$PACKAGE-$VERSION.sif
DEFINITION=Singularity

if [ -f $IMAGE ]; then
	rm -fv $IMAGE
fi

sudo singularity build $IMAGE $DEFINITION

if [ -f $IMAGE ]; then
	exit 0
else
	exit 1
fi
=Singularity

singularity build --remote $IMAGE $DEFINITION
