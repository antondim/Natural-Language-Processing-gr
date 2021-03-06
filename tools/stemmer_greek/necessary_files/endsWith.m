function [output] = endsWith(token,list_of_suffixes_to_check)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that checks the suffix of input token
% looking into a suffix list (suffixesGR.m)
% 
% Author: Antonopoulos Dimitrios, 2018-2019
%
% output: True (1) or False (0)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


        suffix_length = cellfun('length',list_of_suffixes_to_check);
        token_length = length(token);
        
        output=0;
        
        for j=1:length(list_of_suffixes_to_check)
            k=1;    % variable used to iterate through all the letters of each suffix
            if suffix_length(j) < token_length
                for letter = suffix_length(j)-1 : -1 : 0
                    if token(token_length-letter) ~= list_of_suffixes_to_check{j}(k)
                        output = 0;
                        continue;
                    elseif suffix_length(j) == k && letter==0
                        output = k;
                        return
                    end
                    k = k + 1;
                end
            else
                continue;
            end
        end
    end
