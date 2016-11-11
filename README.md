# container-ms-vfetc
Version: 1.0.0

## Short Description

A container image definition for ms-vfetc

## Description

ms-vfetc is a tool to convert MS vendor export formats to a generic format that can easily be used in tools like R and Python/Pandas 

## Key features

- Converts exports from MS vendors (Agilent, Sciex, Shimadzu, and Waters) to generic format (2D dataframe).

## Functionality

- Other Tools

## Approaches
  
## Instrument Data Types

## Tool Authors

- [Analytical BioSciences group at Leiden University](http://analyticalbiosciences.nl/)

## Container Contributors

- [Michael van Vliet](https://github.com/orgs/leidenuniv-lacdr-abs/people/michaelvanvliet) (Leiden University)

## Website

- https://github.com/leidenuniv-lacdr-abs


## Git Repository

- https://github.com/leidenuniv-lacdr-abs/ms-vfetc

## Installation 

## Usage Instructions

For direct docker usage:

Clone/download the container (after making sure you have [Docker](https://www.docker.com/products) installed properly).

```bash
docker build -t vfetc .
```

```bash
docker run -it --rm -v $PWD/ms-vfetc/data/tmp:/out --name vfetc-running vfetc files=data/vendor/agilent/example_batch1.txt,data/vendor/agilent/example_batch2.txt outputfile=/out/agilent.txt 
```

## Publications
