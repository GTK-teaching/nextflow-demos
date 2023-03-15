# nextflow-demos

Demonstrations of various programming techniques for use inside [Nextflow](https://www.nextflow.io/) pipelines. This repository is meant to be a supplement to the [official Nextflow documentation](https://www.nextflow.io/docs/latest/getstarted.html) (links below).

- an overview presentation about Nextflow can be found [here](https://github.com/stevekm/nextflow-demos/blob/docs/docs/Nextflow_presentation.pdf) (view [here](https://docs.google.com/viewer?url=https://raw.githubusercontent.com/stevekm/nextflow-demos/docs/docs/Nextflow_presentation.pdf))

- Nextflow HTML report examples can be found here:

    - [pipeline report](https://htmlpreview.github.io/?https://github.com/stevekm/nextflow-demos/blob/report-output/reporting/nextflow-report.html)

    - [timeline report](https://htmlpreview.github.io/?https://github.com/stevekm/nextflow-demos/blob/report-output/reporting/timeline-report.html)

*NOTE*: Some of the techniques demonstrated here may be deprecated by the new [DSL2](https://www.nextflow.io/docs/latest/dsl2.html) syntax offered by Nextflow. Be sure to check that out as well.

# Install

Clone this repo:

```bash
git clone git@github.com:stevekm/nextflow-demos.git
cd nextflow-demos
```

# Contents

Each subdirectory contains files to run sample Nextflow pipelines.

## Files

- `Makefile`: shortcut to commands to install and clean up Nextflow and its pipeline output

- `main.nf`: Nextflow pipeline file

- `nextflow.config`: config file for Nextflow pipeline (optional)

## Sample Pipeline Directories

(listed in recommended order for new users)

- `print-samples`: Prints samples from a list to the terminal

- `make-files`: Creates files based on sample ID inputs

- `output-files`: Same as `make-files` but includes custom file output options

- `async`: demonstration of asynchronous process execution

- `custom-email-output`: Creates files from sample ID's then sends the user an email with a pipeline summary and files attached

- `output-variable-name`: Same as `output-files` but includes inline variable definition of output file names

- `R-Python`: methods for using other scripting languages inside the Nextflow pipeline

- `join-pairs`: joining pairs of samples based on ID across input channels

- `parse-samplesheet`: parsing of a samplesheet as input for Nextflow pipeline

- `reporting`: execution of Nextflow pipeline with reporting and config features enabled.

- `profiles-Docker-module`: usage of 'profiles' to change process execution behavior to use Docker or environment modules

- `Groovy-code`: example of using inline Groovy code inside the Nextflow pipeline

# Usage

You can use the following commands inside the provided demo subdirs to run the demo pipelines.

## Install Nextflow

```
# in a subdir in this repo
make
```

## Run pipeline

```
./nextflow run main.nf
```

or

```
make run
```

## Cleanup

```
make clean
```

# Resources

- Nextflow Homepage: https://www.nextflow.io/

- Nextflow Docs: https://www.nextflow.io/docs/latest/getstarted.html

- Nextflow Patterns: https://nextflow-io.github.io/patterns/index.html

- Nextflow GitHub: https://github.com/nextflow-io/nextflow

- Nextflow Google Group: https://groups.google.com/forum/#!forum/nextflow

## Examples

- Nextflow tutorial: https://github.com/nextflow-io/hack17-tutorial

- Nextflow examples: https://github.com/nextflow-io/examples

- Pipeline examples: https://github.com/nextflow-io/awesome-nextflow

- Boilerplate example for writing pipelines: https://github.com/stevekm/nextflow-boilerplate

- NYU pipelines:

    - exome sequencing: https://github.com/NYU-Molecular-Pathology/NGS580-nf

    - demultiplexing: https://github.com/NYU-Molecular-Pathology/demux-nf
