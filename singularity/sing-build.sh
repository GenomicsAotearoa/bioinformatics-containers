#!/bin/bash

#Build in Alphabetical Order
echo "Building Adtex"
singularity build --force adtex.simg docker://gacancergenomics/adtex:latest
echo "Building Bedtools"
singularity build bedtools-0.3.simg docker://gacancergenomics/bedtools:2.28.0
echo "Building BWA"
singularity build --force bwa-0.7.17.simg docker://gacancergenomics/bwa:0.7.17
echo "Building Cutadapt"
singularity build --force cutadapt-2.3.simg docker://gacancergenomics/cutadapt:2.3
echo "Building FastQC"
singularity build --force fastqc-0.11.7.simg docker://gacancergenomics/fastqc:0.11.7
echo "Building GATK4"
singularity build --force gatk-4.1.2.0.simg docker://broadinstitute/gatk:4.1.2.0
echo "Building Lumpy"
singularity build --force lumpy-0.3.simg docker://gacancergenomics/lumpy:0.3.0
echo "Building Picard"
singularity build --force picard-2.18.4.simg docker://gacancergenomics/picard:2.18.4
echo "Building Samtools"
singularity build --force samtools-1.9.simg docker://gacancergenomics/samtools:1.9
echo "Building VarScan"
singularity build --force varscan-2.4.3.simg docker://gacancergenomics/varscan:2.4.3
