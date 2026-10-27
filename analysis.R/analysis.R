# Run installation only once on your computer:
install.packages(c("rentrez", "ggplot2"))
library(rentrez)
library(ggplot2)

# CHANGE THESE FOUR VALUES to your assignment (example: ACTA1):
gene_symbol <- "ACTA1"
transcript_accession <- "NM_001100.4" clinvar_id <- "18292" variant_protein <- "p.Val165Met" # Use "" for splice variants
for (x in c("data", "results", "figures")) {
dir.create(x, showWarnings = FALSE)
}