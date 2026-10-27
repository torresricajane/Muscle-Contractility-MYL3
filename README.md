# Muscle-Contractility-MYL3

## (a) Assignment Overview & Identifiers
* **Assignment Number / Project:** Muscle Contractility and Variant Analysis Workflow
* **Gene:** *MYL3* (Gene ID: 4634)
* **Transcript Accession:** `NM_000258.3`
* **Protein Accession:** `NP_000249.1` (Total Length: 195 amino acids)
* **ClinVar Variation ID:** 181444 (`p.Met149Ile`)

## (b) Research Question
How does the pathogenic missense variant *p.Met149Ile* within the *MYL3* gene affect protein structure, lever-arm domain stability, and cross-bridge kinetics, and what is its molecular mechanism in driving inherited cardiomyopathies such as Hypertrophic Cardiomyopathy (HCM)?

## (c) Step-by-Step Methods & R Commands

### Step 1. Set up your R project
The project was organized into `data/`, `results/`, and `figures/` folders, with `analysis.R` in the root directory.
Install the required packages once:
```R
install.packages(c("rentrez", "ggplot2"))

Load the packages at the beginning of a new R session:

library(rentrez)
library(ggplot2)

Set the assigned identifiers and create the output directories:

gene_symbol <- "MYL3"
transcript_accession <- "NM_000258.3"
clinvar_id <- "181444"
variant_protein <- "p.Met149Ile"

for (x in c("data", "results", "figures")) {
  dir.create(x, showWarnings = FALSE)
}

Step 2. Retrieve your human NCBI Gene record using R
The human MYL3 record was searched in NCBI Gene using the gene symbol and human taxonomy ID. The record was checked to confirm the exact gene.

