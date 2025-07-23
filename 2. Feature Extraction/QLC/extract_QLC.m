clc;
clear all;
feature_QLC=[];

[data, sequence] = fastaread('AVP-Training.txt')
Total_Seq_train=size(sequence,2);

for i=1:(Total_Seq_train)
    i
    SEQ=sequence(i);
	FF=mctd(SEQ);
    SEQ=cell2mat(SEQ);
    feature_QLC(i,:)=FF;
end
AVps_QLC_Training=[feature_QLC];
save AVps_QLC_Training AVps_QLC_Training;
csvwrite('AVps_QLC_Training.csv',AVps_QLC_Training);
