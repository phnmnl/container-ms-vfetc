# MS vendor feature export tool converter (ms-vfetc)
Version: 1.1

## Short Description

Convert MS vendor export formats to a tabular format

## Description

ms-vfetc is a tool to convert MS vendor export formats to a generic format that can easily be used in tools like R and Python/Pandas

## Key features

- Converts exports from MS vendors (Agilent, Sciex, Shimadzu, and Waters)

## Functionality

- Data converter

## Approaches

- Metabolomics

## Instrument Data Types

- MS (Mass Spectrometry)

## Tool Authors

- [Analytical BioSciences group at Leiden University](http://analyticalbiosciences.nl/)

## Container Contributors

- [Michael van Vliet](https://github.com/orgs/leidenuniv-lacdr-abs/people/michaelvanvliet) (Leiden University)

## Website

- http://analyticalbiosciences.nl

## Git Repository

- https://github.com/leidenuniv-lacdr-abs/ms-vfetc

## Installation

ms-vfetc is present on all PhenoMeNal Galaxy instances on deployed Cloud Research Environments, under the MS category in the tool bar to the left of the screen. No installation is needed hence on PhenoMeNal Cloud Research Environments.

For local individual installation:

Clone/download the container (after making sure you have [Docker](https://www.docker.com) installed properly).

- Go to the directory where the dockerfile is.
- Create container from dockerfile:

```
docker build -t vfetc .
```

## Usage Instructions

Included in the repository are several example data sets. Below an example how to use the tool with Agilent data.

For direct docker usage:

```bash
docker run -it --rm -v $PWD/ms-vfetc/data/tmp:/out --name vfetc-running vfetc files=data/vendor/agilent/example_batch1.txt,data/vendor/agilent/example_batch2.txt outputfile=/out/agilent.txt
```

## Publications
