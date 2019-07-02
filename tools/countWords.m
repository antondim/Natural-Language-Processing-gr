function [ occ , words_sorted ] = countWords(textfilepath)
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that outputs the occurence frequency of words in a textfile.
% 
% Author: Antonopoulos Dimitrios, 2018-2019
%
% textfilepath : Holds the path of the target we aim to process.
% words : Clean string-words file , without delimiters and numbers.
% occ : Occurences of each word in text.
%
% e.g occ(1), shows "how many times" words_sorted(1) occurs in text file.
% 
% Note:
%      vocabulary.txt: contains the words next to their occurance frequency
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

delimiters = {' ','\f','\n','\t','\v',',','­','-','[','.','°','|'...
    '§','£','<','+','>','·','%','―','„','·','•','{','}','!','?',';','"','“'...
    '‘','–','=','῞','῾','[',']','΄','«','»','_','`','~','/','$','@'...
    '#','^','&','*','(',')','’','\','-','&','-',':','”','_','—','…','''','©','±','º','≤','€'};

text = fileread( textfilepath );
words = strsplit(text, delimiters );
words(cellfun('isempty',words))=[];

[words_sorted,~,J] = unique(words);
occ = histc(J,1:numel(words_sorted));

fid = fopen('vocabulary.txt','w'); % can be changed
cell_occurences = strtrim(cellstr(num2str(occ(:))));
outvar=strcat(words_sorted',{' '},cell_occurences);
fprintf(fid,'%s\n',outvar{:});
fclose(fid);

clear outvar cell_occurences;

end

