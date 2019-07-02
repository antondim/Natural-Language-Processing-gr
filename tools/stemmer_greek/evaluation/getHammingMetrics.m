function [ HammingMean,HammingMedian ] = getHammingMetrics( conflationClasses , totalStems  )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Evaluation Metrics for stemmers' strength
% Based on Frakes Metrics
%
% Mean/Median Hamming distance 
%
% Input:
%   a) conflation classes
%   b) Stem of each vocabulary word
% Output:
%  a) Mean Hamming distance
%  b) Median Hamming distance
% 
% { try, tried, trying } => english stem (e.g) "tri"
% HammingMean = (1+2+4)/3 , Hamming Median = 2
% 
% Author: Antonopoulos Dimitrios, 2018-2019
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
wordsPerConfClass = cellfun('length',conflationClasses);

SumOfAverages = 0;
medianCalculationArray = zeros(1,length(totalStems));

for i=1:length(conflationClasses)
    
    length_of_stem = length(totalStems{i});
    
    % get the length of each word in the i-th conflationClass
    B = cellfun('length',conflationClasses{i}(1:wordsPerConfClass(i)));
    
    %calculate the Mean Hamming distance
    meandistance = (sum(B(:)-length_of_stem)/wordsPerConfClass(i));
    
    medianCalculationArray(i) = meandistance;
    
    SumOfAverages = SumOfAverages + meandistance;
    
end

HammingMean = SumOfAverages/length(conflationClasses);
HammingMedian = median(medianCalculationArray);
end