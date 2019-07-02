function [ CCMV,conflationClasses ] = getConflationClasses( tokens,stems )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluation Metrics for stemmers' strength (Frakes Metrics)
%
% Conflation class is a group of words, that share the same stem
%
% Input:
%   a) tokens (cell array of tokens, extracted from processed text via lexer)
%   b) Stem of each token word
% Output:
%  a) CCMV, which is the average number of words that are found in each conflation class
%  b) cell arrays (classes), with matching words in them
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% extra_code (useful)
% get all conflation with more than 1 word in them
% conflationClasses{find(cellfun(@(x)(length(x)>1), conflationClasses))};
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

conflationClasses={};
uniqueStems = unique(stems);

for i=1:length(uniqueStems)
    conflationClasses{i} = tokens(find(ismember(stems,uniqueStems(i))));
end

for i=1:length(uniqueStems)
    conflationClasses{i} = unique(conflationClasses{i});
end
    
CCMV = sum(cellfun('length',conflationClasses))/length(conflationClasses);

end

