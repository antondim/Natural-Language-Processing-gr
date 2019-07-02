% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that checks if input's last letter is a vowel
% except 'Υ'.
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
%   We pass as an argument the word we want to process
%   and we check if the last charachter is one of the following
%   charachters.
%
%   {'Α','Ε','Η','Ι','Ο','Ω'}
%
%   If it is , it returns  1 as output else 0.
%
% Part of stemmer script
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ out ] = endsWithVowel2(token)

vowels = {'Α','Ε','Η','Ι','Ο','Ω'};

if ismember(token(length(token)),vowels)
    out = 1;
    return;
else
    out = 0;
    return;
end

end


