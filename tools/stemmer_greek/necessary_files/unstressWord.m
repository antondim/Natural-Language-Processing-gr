% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that removes the 'tone' mark from any greek word 
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% Input: token is a word (string)
% Output: token is the same word unstressed
%
% e.g [output] = unstressWord('τονισμός')
%      output : 'τονισμος'
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

function [token] = unstressWord(token)

        stressed_letters = ['ό','ύ','ί','ά','ή','έ','ώ','ΰ','ΐ'];
        unstressed_letters = ['ο','υ','ι','α','η','ε','ω','υ','ι'];
        
        [~,stress_indices] = ismember(token(:),stressed_letters(:));
        token(find(stress_indices~=0)) = unstressed_letters(stress_indices(stress_indices > 0));
    end