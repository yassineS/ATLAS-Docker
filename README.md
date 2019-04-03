# ATLAS-Docker

## Introduction

Docker image for [ATLAS](https://bitbucket.org/WegmannLab/atlas), the Analysis Tools for Low coverage and Ancient Samples. ATLAS is developped by [Daniel Wegmann's Lab](https://www3.unifr.ch/bio/en/research/groups-in-alphabetical-order/wegmann-group.html). ATLAS benefits from a highly dynamic team, and a fast developpement cycle. However, this results in issues if you are trying to run the latest and greatest code from the ATLAS team on your local HPC.

Here I provide a docker file that pulls the latest version of the code from ATLAS's bitbucket repository, builds all the requirements, and compiles the code.

## Running the Docker image
### Docker
You can use docker to run the ATLAS container on your Mac, Windows, or Linux based system:

```
docker run --mount type=bind,source=`pwd`,target=/Data thesmiao/atlas:beta1 atlas task=recalBAM verbose
```

### Singularity
On an HPC where you don't have admin permissions, you can use [Singularity](http://singularity.lbl.gov) to run ATLAS:

```
singularity exec -B `pwd` docker://thesmiao/atlas atlas task=recalBAM
```

**Note:** Make sure that Singularity on your HPC allows you to bind a given location, if you it doesn't work please contact your admin to edit the singularity configuration to allow you to do so.

## ATLAS Documentation
For details on how to use the different modules of ATLAS refere to the project's wiki: https://bitbucket.org/wegmannlab/atlas/wiki/Home


Yassine Souilmi <yassine.souilmi@adelaide.edu.au>
