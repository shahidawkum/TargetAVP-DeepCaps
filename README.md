# TargetAVP-DeepCaps
Predicting Antiviral peptides using novel Deep computational model

1. Dataset
There are two datasets:

   (i) Train dataset

   The benchmark training dataset "TR_starPep_AV.fasta", contains 2321 positive and 2321 negative peptide samples.

   (ii) Independent dataset

   The independent dataset, "TS_starPep_AV.fasta" contains 740 peptide sequences (623 positive and 623 negative samples).

2. Feature Extraction

   a. ProtGPT2 used to encode training samples using Protein Generative Pre-Trained Transformer
   
   b. RECM_CLBP (Completed Local Binary Pattern based Residue energy contact Matrix)

   c. SMR_CLBP (Completed Local Binary Pattern based 2.2.3.	Substitution matrix representation)

   d. QLC 

3.	Two-tier Feature Selection 

  	 Shuffled frog leaping algorithm (SFLA) and Maximum Relevance and Maximum Diversity (MRMD)
 
4. Classification Model

   Sn_CapsNet_Classifier.ipynb includes all the libraries used for training the deep self-normailzed Capsule neural network model.


Contact
If you are interested in our work or if you have any suggestions and questions about our research work, please contact us.E-mail: shahid.akbar@awkum.edu.pk
