# Docker/Singularity Containers

These containers are being used in the [Cancer Seq Pipleline](https://github.com/GenomicsAotearoa/cancer-seq-pipeline)

Current best practice is to create a new directory of the form **/tool-version** that contains the Dockerfile and any required dependencies. Builds need to be manually pushed to gacancergenomics on docker hub. This will be done after a new pull request for a *tool-version* has been approved.

To run these containers on singularity run the script [sing-build.sh](../singularity/sing-build.sh) on your HPC cluster to build the singularity images.
