function [ unchangedWordsRatio ] = getUnchangedWordsRatio( tokens,stems )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluation Metrics for stemmers' strength
% Based on Frakes Metrics
% 
% Unchanged Words Ratio
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% In Saroukos' paper is stated that:
% "A big ratio of unchanged words to total words can indicate poor algorithmic performance.
% Stronger stemmers will change words more often than weaker stemmers !"
%
% So the LOWER the RATIO , the STRONGER the Stemmer
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

unchangedWordsRatio = sum(ismember(tokens,stems))/length(tokens);

end

