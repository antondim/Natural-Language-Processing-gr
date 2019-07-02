function [ termsList ] = textCleanerGR( termsList, sigmaResolve_mode )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Function that "cleans" a greek parsed text file.
%
% Part of preprocessing tools.
% 
% Author : Antonopoulos Dimitrios ,2018-2019
%
% Input: 1) term list of words (tokens), parsed by the lexer, 2)sigmaResolve_mode (1:correct , 2:delete incorrect words)
%                                                       
% Output: clean terms list
%
% Cleans greek-language parsed texts from:
%       1) semantically non important words - stopwords. (conjuctions, prepositions, articles...etc)
%       2) non greek charachters. (hebrew,chinese,etc) - 
%       3) words that have incorrect suffixes. (suffix == 'σ')
%       4) extra conditions
% 
% e.g [output] = textCleanerGR({'...'} , 1)
% 
% Note:
%      termsList is a cell array of strings (e.g output of lexer)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


fprintf('TEXT CLEANING...\n');

termsList = removeStopwordsGR(termsList);
termsList(cellfun('isempty',termsList)) = [];

termsList = nonGreekLettersCleaner(termsList);

termsList = sigmaResolve(termsList,sigmaResolve_mode);

ind_len1 = find(cellfun('length',termsList)==1); %extra condition (e.g remove tokens with length == 1)
termsList(ind_len1)=[];

fprintf('Cleaning completed succesfully !\n');

end



