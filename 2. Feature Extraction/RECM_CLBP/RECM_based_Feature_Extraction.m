%% Code to extract the RECM_CLBP
clear all
clc;
[data, sequence]= fastaread('IND-II.txt');

Total_Seq_train=size(sequence,2);
for i=1:(Total_Seq_train)
     i
    SEQ=sequence(i);
    SEQ=cell2mat(SEQ);
    RECM_T = RECMT(SEQ);
    RECM_T=RECM_T';
    P = uint8(255 * mat2gray(RECM_T));
    
	%%%%%%%%%%%% CLBP %%%%%%%%%%%%%%%%
   FF=Process_CLBP(P);
    RECM_CLBP_IMG_ACP_IND_II(i,:)=FF;
    
   
   end


save RECM_CLBP_IMG_ACP_IND_II RECM_CLBP_IMG_ACP_IND_II;
%%%% To Create CSV sheet for the data %%%%%%%%%
   
csvwrite('RECM_CLBP_IMG_ACP_IND_II.csv',RECM_CLBP_IMG_ACP_IND_II);
