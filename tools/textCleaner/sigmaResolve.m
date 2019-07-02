function [ termsList ] = sigmaResolve( termsList,mode )
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Remove or Replace words that end with letter 'σ' or start with letter 'ς'.
% 
% Author : Antonopoulos Dimitrios, 2018-2019
% 
% textfile: Parsed text in a string cell array.
%
% Mode 1:
%   With the use of regular expression, we replace the last letter of all
%   words that end letter 'σ', with 'ς' and those that start with 'ς', with letter 'σ'.
% Mode 2:
%   We remove the words that meet the criteria, instead of correcting them.
%   (Just in case they were falsely parsed)
%
% Note:
%      termsList is a cell array of strings (e.g output of lexer)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

indices = find(~cellfun(@isempty,regexp(termsList,'σ$')));
indices2 = find(~cellfun(@isempty,regexp(termsList,'^ς')));

switch mode
    case 1
        for i = 1:length(indices)
            termsList{indices(i)}(length(termsList{indices(i)})) = 'ς';
        end
        
        for i = 1:length(indices2)
            termsList{indices2(i)}(1) = 'σ';
        end
    case 2
        termsList(indices)=[];
        termsList(indices2)=[];
end

end


