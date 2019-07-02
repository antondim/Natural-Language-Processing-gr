function [termsList] = nonGreekLettersCleaner( termsList )
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Function for fast removing all non-greek charachtered tokens from a greek
% parsed text file.
% 
% Author : Antonopoulos Dimitrios, 2018-2019
% 
% Using this function:
%
%   1)we remove all the non-greek charachters from our parsed greek termList input
%   2)we compare old terms with new terms and remove the non matched ones
%
% e.g [output] = nonGreekLettersCleaner( {'αβγ','αbγ'} )
%
% Note:
%      termsList is a cell array of strings (e.g output of lexer)
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

temptermsList = regexprep(termsList,'[^ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩαάεέϋϊΐΰηήιίοόυύωώβγδζθκλμνξπρσςτφχψ]','','all');
ind = find(~strcmp(termsList,temptermsList));
termsList(ind)=[];

fprintf('\nNumber of non greek terms deleted : %d \n\n',length(ind));

end

