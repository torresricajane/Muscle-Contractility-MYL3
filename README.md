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


Load the packages at the beginning of a new R session:

Set the assigned identifiers and create the output directories:

Step 2. Retrieve your human NCBI Gene record using R
The human MYL3 record was searched in NCBI Gene using the gene symbol and human taxonomy ID. The record was checked to confirm the exact gene.

The Gene ID, official name, chromosome, and normal biological role were recorded in results/gene_summary.txt. The biological role was described using the gene record and supporting references.

Step 3. Retrieve the matching protein sequence from the assigned transcript
The assigned RefSeq transcript was retrieved from NCBI Nucleotide. Its GenBank record was inspected to extract the linked RefSeq protein accession.

The accession version was retained to identify the exact sequence used for the analysis and to reduce confusion between alternative protein isoforms.

Step 4. Analyze protein length and amino-acid composition in R
The saved FASTA sequence was read into R. The length and counts of the 20 standard amino acids were calculated, and the results were exported to CSV.

A bar chart was generated and saved:

Step 5. Open and document your PREASSIGNED ClinVar record
ClinVar Variation ID 181444 was inspected at the linked NCBI ClinVar record. The variant name, HGVS descriptions, associated condition, clinical significance, review status, evaluation date, and supporting literature were recorded in results/clinvar_summary.txt.
The assigned variant was kept fixed throughout the analysis. 

Step 6. Produce a second biological visualization
The second figure marks residue 149 on the 195-amino-acid reference protein (p.Met149Ile). The figure was saved as figures/02_variant_position.png. Additionally, a structural domain mapping figure (protein_structure_or_splice_diagram.png) was generated using the canva app to display the EF-hand lever-arm region, it was based on the .

This marker shows where the *p.Met149Ile* substitution occurs on the *MYL3* reference sequence, but it does not prove any structural or functional changes on its own.


