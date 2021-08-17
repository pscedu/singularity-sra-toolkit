![Status](https://github.com/pscedu/singularity-sra-toolkit/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-sra-toolkit/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-sra-toolkit)
![forks](https://img.shields.io/github/forks/pscedu/singularity-sra-toolkit)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-sra-toolkit)
![License](https://img.shields.io/github/license/pscedu/singularity-sra-toolkit)

# singularity-sra-toolkit


Singularity recipe for [sra-toolkit](https://github.com/ncbi/sra-tools).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the `sra-toolkit` script

to `/opt/packages/sra-toolkit/2.11.0`.

Copy the file `modulefile.lua` to `/opt/modulefiles/sra-toolkit` as ` 2.11.0.lua`.

## Building the image using the recipe

### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
````

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2021 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing
Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).

