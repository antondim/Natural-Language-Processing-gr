function [ ICF ] = getIndexCompressionFactor(corpus,stems )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluation Metrics for stemmers' strength
% Based on Frakes Metrics
%
% The index compression factor is defined as ICS = n-s/n.
%   "n" is the number of words in the corpus (corpus).
%   "s" is the number of stems produced by the stemmer.
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% Note:
% This metric indicates the total terms reduction that can be achieved through stemming.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

ICF = (length(corpus) - length(unique(stems)))/length(corpus);


end

