function [ termList ] = lexer( termListFile, size_mode, number_mode )
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Function that tokenizes a plain text file on delimiters
%
% Author : Antonopoulos Dimitrios, 2018-2019
%
% This function gets as input a text file and extracts as output the text "tokenized"
%
%
% e.g      tokens = lexer('path/file_name',1,2);
%
% 1) we add the string of text file path
% 2) we choose text 'size_mode' (1: lower all charachters, 2: no changes)
% 3) we choose text 'number_mode' (1: remove numbers and terms containing numbers , 2: no changes)
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('\nTokenization...')

delimiters = {' ','\f','\n','\t','\v',',','­','-','[','.','°','|'...
              '§','£','<','+','>','·','%','―','„','·','•','{','}','!','?',';','"','“'...
              '‘','–','=','῞','῾','[',']','΄','«','»','_','`','~','/','$','@'...
              '#','^','&','*','(',')','’','\','-','&','-',':','”','_','—','…','''','©','±','º','≤','€'};

switch size_mode
    case 1
        text = fileread( termListFile );
        termList = strsplit(lower(text), delimiters );
        termList(cellfun('isempty',termList))=[];

    case 2
        text = fileread( termListFile );
        termList = strsplit(text, delimiters );
        termList(cellfun('isempty',termList))=[];
end

switch number_mode
    case 1
        termList = regexprep(termList,'\w*\d\w*','');
        termList(cellfun('isempty',termList))=[];
        fprintf('\nNumber of parsed terms : %d \n\n',length(termList))
    case 2
        fprintf('\nNumber of parsed terms : %d \n\n',length(termList))
end


end

