function [ CCMV,conflationClasses ] = getConflationClasses( vocabulary,stems )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluation Metrics for stemmers' strength (Frakes Metrics)
%
% Conflation class is a group of words, that share the same stem
%
% Input:
%   a) Vocabulary (cell array of unique tokens, extracted from processed text)
%   b) Stem of each vocabulary word
% Output:
%  a) cell arrays (classes), with matching words in them
%  b) CCMV, which is the average number of words that are found in each conflation class
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
    conflationClasses{i} = vocabulary(find(ismember(stems,uniqueStems(i))));
end

for i=1:length(uniqueStems)
    conflationClasses{i} = unique(conflationClasses{i});
end
    
CCMV = sum(cellfun('length',conflationClasses))/length(conflationClasses);

end

