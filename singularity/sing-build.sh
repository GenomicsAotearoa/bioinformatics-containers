#!/bin/bash

#Build in Alphabetical Order
echo "Building Adtex"
singularity build --force adtex.sif docker://gacancergenomics/adtex:latest
echo "Building Bedtools"
singularity build bedtools-0.3.sif docker://gacancergenomics/bedtools:2.28.0
echo "Building BWA"
singularity build --force bwa-0.7.17.sif docker://gacancergenomics/bwa:0.7.17
echo "Building Cutadapt"
singularity build --force cutadapt-2.3.sif docker://gacancergenomics/cutadapt:2.3
echo "Building FastQC"
singularity build --force fastqc-0.11.7.sif docker://gacancergenomics/fastqc:0.11.7
echo "Building GATK4"
singularity build --force gatk-4.1.2.0.sif docker://broadinstitute/gatk:4.1.2.0
echo "Building Lumpy"
singularity build --force lumpy-0.3.sif docker://gacancergenomics/lumpy:0.3.0
echo "Building Picard"
singularity pull library://knowlton_lab/default/picard:latest 
echo "Building Samtools"
singularity build --force samtools-1.9.sif docker://gacancergenomics/samtools:1.9
echo "Building VarScan"
singularity build --force varscan-2.4.3.sif docker://gacancergenomics/varscan:2.4.3
