# SAM to BED Feature Annotation

This repository contains a shell-based bioinformatics workflow for processing alignment outputs in SAM format and annotating genomic intervals using samtools and bedtools.

The pipeline demonstrates common post-alignment processing steps used in next-generation sequencing (NGS) analysis workflows, including format conversion, sorting, genomic interval generation, and feature overlap annotation.

## Workflow

The workflow performs the following steps:

1. Convert SAM alignment files to BAM format
2. Sort BAM files for downstream analysis
3. Convert sorted BAM files to BED interval format
4. Annotate genomic intervals by intersecting sequencing reads with genomic feature annotations

## Inputs

* `sequences.sam` — aligned sequencing reads in SAM format
* `features.bed` — genomic feature annotations in BED format

## Tools Used

* samtools
* bedtools
* Bash shell scripting

## Biological Relevance

This workflow reflects common preprocessing and annotation steps used in genomics and transcriptomics pipelines to associate aligned sequencing reads with known genomic regions or features.

## Usage

Ensure `samtools` and `bedtools` are installed and available in your system PATH.

Make the script executable:

```bash
chmod +x SamBed.sh
```

Run the workflow:

```bash
./SamBed.sh
```

## Output

* Sorted BAM alignment file
* BED interval file
* Annotated BED file containing overlapping genomic features
