#!/usr/bin/env bash

# Step 1: Convert SAM to BAM
samtools view -Sb sequences.sam > sequences.bam

# Step 2: Sort BAM file
samtools sort sequences.bam -o sequences.sorted.bam

# Step 3: Convert sorted BAM to BED
bedtools bamtobed -i sequences.sorted.bam > sequences.bed

# Step 4: Annotate sequences with BED features
bedtools intersect -a sequences.bed -b features.bed -wa -wb > annotated_sequences.bed

echo "Complete. Output: annotated_sequences.bed"
