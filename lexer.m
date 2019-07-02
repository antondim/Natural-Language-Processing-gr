function [ termList ] = lexer( termListFile, mode )
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% lexer(a).m
%
% Function that tokenizes a plain text file, ignoring and removing the delimiters.
%
% Author : Antonopoulos Dimitrios, 2018-2019
%
% This function gets as input a text file and extracts as output the text "tokenized" , without delimiters.
%
%
% e.g      a = lexer('path/file_name','1' or '2');
%
% 1) we choose text 'mode' (i.e '1' for removing numbers or tokens containing numbers, '2' for keeping it as it is)
% 2) we substitute the delimiters found in text with space.
% 3) we either remove or keep all the numbers and terms containing numbers
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('\nTokenization...')

delimiters = {' ','\f','\n','\t','\v',',','­','-','[','.','°','|'...
    '§','£','<','+','>','·','%','―','„','·','•','{','}','!','?',';','"','“'...
    '‘','–','=','῞','῾','[',']','΄','«','»','_','`','~','/','$','@'...
    '#','^','&','*','(',')','’','\','-','&','-',':','”','_','—','…','''','©','±','º','≤','€'};

switch mode
    case 1
        text = fileread( termListFile );
        termList = strsplit(lower(text), delimiters );
        termList = regexprep(termList,'\w*\d\w*','');
        termList(cellfun('isempty',termList))=[];
        fprintf('\nNumber of parsed terms : %d \n\n',length(termList))
    case 2
        text = fileread( termListFile );
        termList = strsplit(text, delimiters );
        termList(cellfun('isempty',termList))=[];
        fprintf('\nNumber of parsed terms : %d \n\n',length(termList))
end

end

