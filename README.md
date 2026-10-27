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

 <img width="385" height="35" alt="image" src="https://github.com/user-attachments/assets/13d59bfb-4e75-4af9-b275-47c6c5980081" />

Load the packages at the beginning of a new R session:

<img width="313" height="37" alt="image" src="https://github.com/user-attachments/assets/84a86ca6-c429-4bc3-ab5a-9425e7124b38" />


Set the assigned identifiers and create the output directories:

<img width="516" height="161" alt="image" src="https://github.com/user-attachments/assets/021796af-eb69-4870-ac4a-cc37d34d28bd" />

Step 2. Retrieve your human NCBI Gene record using R
The human MYL3 record was searched in NCBI Gene using the gene symbol and human taxonomy ID. The record was checked to confirm the exact gene.

<img width="566" height="392" alt="image" src="https://github.com/user-attachments/assets/81536daf-bdf5-45e5-b4ef-9e392fa8dd2e" />

The Gene ID, official name, chromosome, and normal biological role were recorded in results/gene_summary.txt. The biological role was described using the gene record and supporting references.

Step 3. Retrieve the matching protein sequence from the assigned transcript
The assigned RefSeq transcript was retrieved from NCBI Nucleotide. Its GenBank record was inspected to extract the linked RefSeq protein accession.

<img width="575" height="327" alt="image" src="https://github.com/user-attachments/assets/6f5ccd84-30b9-46e4-b58d-e2885a8b99f2" />

The accession version was retained to identify the exact sequence used for the analysis.

Step 4. Analyze protein length and amino-acid composition in R
The saved FASTA sequence was read into R. The length and counts of the 20 standard amino acids were calculated, and the results were exported to CSV.

<img width="485" height="233" alt="image" src="https://github.com/user-attachments/assets/1ef44861-10ed-46b8-9951-3250edddcd51" />

A bar chart was generated and saved:

<img width="498" height="135" alt="image" src="https://github.com/user-attachments/assets/00b70340-d24a-4234-a168-19df432ad456" />

Step 5. Open and document your PREASSIGNED ClinVar record
ClinVar Variation ID 181444 was inspected at the linked NCBI ClinVar record. The variant name, HGVS descriptions, associated condition, clinical significance, review status, evaluation date, and supporting literature were recorded in results/clinvar_summary.txt.
The assigned variant was kept fixed throughout the analysis. 

Step 6. Produce a second biological visualization
The second figure marks residue 149 on the 195-amino-acid reference protein (p.Met149Ile). The figure was saved as figures/02_variant_position.png. Additionally, a structural domain mapping figure (protein_structure_or_splice_diagram.png) was generated using the canva app to display the EF-hand lever-arm region, it was based on the .

<img width="1054" height="366" alt="image" src="https://github.com/user-attachments/assets/686c2ead-0ffd-4fb8-9375-790204a90ac3" />

This marker shows where the *p.Met149Ile* substitution occurs on the *MYL3* reference sequence, but it does not prove any structural or functional changes on its own.

---

## (d) Results & Figures

Gene Symbol: MYL3 
Reference Sequence: NP_000249.1 
Total Protein Length: 195 amino acids 
Variant: p.Met149Ile (ClinVar ID: 181444)
Affected Position: Residue 149

* **Amino Acid Composition Data:** Saved in `results/amino_acid_composition.csv`.

<img width="2400" height="1500" alt="01_amino_acid_composition" src="https://github.com/user-attachments/assets/e00687fb-630d-4391-99c5-a8f0a416679e" />

  This bar chart shows the count of each of the 20 standard amino acids across the 195-residue *MYL3* protein, highlighting which building blocks are most common in the structure.

<img width="2400" height="750" alt="02_variant_position" src="https://github.com/user-attachments/assets/4a43ac74-6349-4672-8893-db628ab5582c" />

   This linear map marks the exact location of the *p.Met149Ile* substitution at position 149 along the length of the reference protein.
  
<img width="1024" height="768" alt="protein_structure_and_mapping" src="https://github.com/user-attachments/assets/acc83a30-47ef-4b82-be8f-44f42ec9f5b5" />

   This diagram shows that residue 149 is located within the conserved EF-hand domain / myosin lever-arm region, which plays a key role in stabilizing the myosin heavy chain during muscle contraction.

## (e) Discussion: Variant  interpretation Effects, Clinical Association, and Predictions

The p.Met149Ile variant in MYL3 is classified in ClinVar as Likely Pathogenic (Variation ID: 181444), supported by multiple clinical submissions and familial segregation studies linked to hypertrophic cardiomyopathy (HCM). Residue 149 lies within the highly conserved heavy-chain binding and structural core of the myosin essential light chain. Substituting methionine with isoleucine alters local hydrophobicity and steric packing, impairing structural stability at the myosin neck region and disrupting normal cross-bridge cycling dynamics during muscle contraction.

**Variant Effects, Clinical Association, and Predictions**
 
*MYL3* encodes the ventricular essential light chain, a structural protein component of cardiac myosin that helps stabilize the myosin head and coordinate smooth, efficient muscle contraction. Changes affecting this regulatory component may alter cross-bridge kinetics, neck-region stability, and force development in heart muscle.

The assigned variant, c.447G>T (*p.Met149Ile*), is a missense change that substitutes isoleucine for methionine at amino acid position 149. Our R sequence analysis identifies the protein length (195 amino acids) and amino acid composition, while the position diagram shows where the substitution occurs on the reference sequence. However, these computational outputs only describe the sequence data; they do not, by themselves, demonstrate that the substitution alters protein function.

The supplied ClinVar summary (Variation ID: 181444) reports an overall "Likely Pathogenic" classification for hypertrophic cardiomyopathy (HCM). The summary describes clinical observations, rarity in population databases, and computational predictions among the reported evidence. These evidence types should be interpreted separately: clinical observations support an association with disease, while computational predictions only estimate possible structural consequences. Furthermore, the classification reflects an evidence-based assessment rather than definitive proof of every proposed molecular mechanism.

Published laboratory studies have investigated the functional effects of essential light chain variants in cardiac muscle. For example, foundational work by Olson and colleagues (2002) and Caleshu and colleagues (2011) demonstrated that mutations in the *MYL3* gene alter sarcomeric structure and contribute directly to primary cardiomyopathies. These findings suggest that the variant may affect how cardiac muscle cells generate and regulate force. However, results from laboratory systems do not automatically explain every aspect of the disease in human patients, and functional findings must be distinguished from clinical evidence.

A useful follow-up experiment would compare wild-type and *p.Met149Ile* cardiac proteins using an *in vitro* actin-sliding motility assay or a steady-state actomyosin ATPase activity assay. Measuring sliding velocity and ATP hydrolysis rates across a range of conditions could test whether the variant changes motor function and cross-bridge kinetics. Appropriate controls, replicate measurements, and statistical analyses would be needed. Such an experiment would investigate a possible molecular effect but would not, by itself, establish the full clinical consequences in patients.

## (f) Limitations & Validation Experiment

**Limitations:** Our computer analysis, sequence retrieval, and linear position maps only show the baseline sequence data and where the variant is located. These tools cannot measure real-time changes inside living cells, nor can they fully predict how a patient's overall body system will react to the mutation.

**Validation Experiment:** A good follow-up experiment would be an *in vitro* actin-sliding motility assay or a steady-state actomyosin ATPase activity assay using normal and mutant proteins. This would test whether the *p.Met149Ile* change actually disrupts muscle contraction speed or energy use, providing functional proof to support the clinical classification.


## (g) Database Links, Accession Versions, Access Dates, and Citations
* **NCBI Gene & RefSeq:** 
  * Gene: *MYL3* (Gene ID: 4634)
  * Transcript Accession: `NM_000258.3` (MANE Select)
  * Protein Accession: `NP_000249.1`
  * Access Date: October 2026. 
  * URL: [NCBI Gene Database (Gene ID: 4634)](https://www.ncbi.nlm.nih.gov/gene/4634)
* **ClinVar Database:** 
  * Variation ID: 181444
  * Accession Version: `VCV000181444.3`
  * Access Date: October 2026. 
  * URL: [NCBI ClinVar Record (Variation ID: 181444)](https://www.ncbi.nlm.nih.gov/clinvar/variation/181444/)

## Section V: Answers to Questions

1. **What does your assigned gene encode, and how does this protein contribute to muscle function?**  
   My assigned gene, *MYL3* (Gene ID: 4634), encodes the ventricular essential light chain of cardiac myosin. It binds to the lever arm of the myosin heavy chain to stabilize its structure, enabling efficient muscle contraction and force generation in my cardiac muscle cells.

2. **What was the exact protein accession and length retrieved with R?**  
   * **Protein Accession:** `NP_000249.1`  
   * **Length:** 195 amino acids  

3. **What did the amino-acid composition chart show? What can it NOT tell you?**  
    It displayed my calculated counts and frequencies for each of the 20 standard amino acids across my reference protein sequence. It cannot show me the 3D folded structure, domain interactions, or how specific amino acid changes impair functional activity.

4. **What is your fixed ClinVar variant, and what is its current classification and evidence strength?**  
   * **Variant:** `c.447G>T` (`p.Met149Ile`), Variation ID 181444[cite: 5].  
   * **Classification:** Likely pathogenic[cite: 4, 5].  
   * **Evidence Strength:** 2 gold stars (reviewed by multiple submitters with criteria provided and no conflicting clinical interpretations)[cite: 4].

5. **What is the scientifically supported mechanism linking this variant to muscle function, and what remains uncertain?**  
   Substituting methionine with isoleucine at position 149 alters local hydrophobic properties and structural stability in the myosin neck region, altering cross-bridge cycling dynamics. It is still uncertain how severely this change affects heart performance across different patients or why disease severity varies between individuals carrying the same variant.

6. **What additional experiment would help test the proposed mechanism?**  
   I would perform an *in vitro* actin-sliding motility assay and an actomyosin ATPase activity assay comparing my wild-type and mutant (*p.Met149Ile*) proteins to directly measure contraction speed and energy consumption.


* **References:**
  1. Olson TM, Karst ML, Whitby FG, Driscoll DJ. Myosin light chain mutation causes autosomal recessive cardiomyopathy with mid-cavitary hypertrophy and restrictive physiology. *Circulation*. 2002;105(20):2337-2340. [PMID: 12021217](https://pubmed.ncbi.nlm.nih.gov/12021217/)
  2. Caleshu C, Sakhuja R, Nussbaum RL, et al. Furthering the link between the sarcomere and primary cardiomyopathies: restrictive cardiomyopathy associated with multiple mutations in genes previously associated with hypertrophic or dilated cardiomyopathy. *Am J Med Genet A*. 2011;155A(9):2229-2235. [PMID: 21823217](https://pubmed.ncbi.nlm.nih.gov/21823217/)
