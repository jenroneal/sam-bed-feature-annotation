# SAM to BED Feature Annotation

This repository contains a simple shell-based workflow for processing
alignment outputs in SAM format and annotating genomic intervals using
samtools and bedtools.

The script demonstrates common post-alignment steps used in NGS analysis,
including format conversion and feature overlap annotation.

## Workflow

- Convert SAM to BAM
- Sort BAM file
- Convert sorted BAM to BED
- Intersect BED intervals with genomic features

## Inputs

- SAM file containing aligned sequencing reads
- BED file containing genomic features

## Tools

- samtools
- bedtools

## Usage

1. Make sure samtools and bedtools are installed and available in your PATH.
2. Make the script executable:
   chmod +x SamBed.sh
3. Run the script:
   ./SamBed.sh
