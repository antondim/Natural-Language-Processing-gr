function [ termsList ] = removeStopwordsGR( termsList )
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that loads and removes the greek stopwords from a greek parsed .mat file.
% 
% Author : Antonopoulos Dimitrios ,2018-2019
%
% This function:
%    1) loads the greek stopwords list "stopwordsGR".
%    2) Checks for each word in termList if it matches with any of the stopwords.
%    3) Removes the matching words.
%
% Note:
%      termsList is a cell array of strings (e.g output of lexer)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('stopwordsGR');
ind = ismember(termsList,stopwords);
termsList(ind)=[];
fprintf('Stop words deleted : %d ',nnz(ind));
end

