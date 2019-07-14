#!/bin/bash

#Build in Alphabetical Order
echo "Building Adtex"
singularity build --force adtex.simg docker://nknowlton/bioinformatics-containers:adtex
echo "Building Bedtools"
singularity build bedtools-0.3.simg docker://nknowlton/bioinformatics-containers:bedtools-0.3
echo "Building BWA"
singularity build --force bwa-0.7.17.simg docker://nknowlton/bioinformatics-containers:bwa-0.7.17
echo "Building Cutadapt"
singularity build --force cutadapt-2.3.simg docker://nknowlton/bioinformatics-containers:cutadapt-2.3
echo "Building FastQC"
singularity build --force fastqc-0.11.7.simg docker://nknowlton/bioinformatics-containers:fastqc-0.11.7
echo "Building GATK4"
singularity build --force gatk-4.1.2.0.simg docker://broadinstitute/gatk:4.1.2.0
echo "Building Lumpy"
singularity build --force lumpy-0.3.simg docker://nknowlton/bioinformatics-containers:lumpy-0.3
echo "Building Picard"
singularity pull library://knowlton_lab/default/picard:latest 
echo "Building Samtools"
singularity build --force samtools-1.9.simg docker://nknowlton/bioinformatics-containers:samtools-1.9
echo "Building VarScan"
singularity build --force varscan-2.4.3.simg docker://nknowlton/bioinformatics-containers:varscan-2.4.3
