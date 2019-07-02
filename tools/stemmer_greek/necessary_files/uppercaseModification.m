% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function that finds the lowercase letters of word, keeps their
% spot, and then replaces them with uppercase ones.
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% In the end, the word is remodified to it's initial state
% (pre uppercaseModification)
%
% Part of stemmer script
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [uppercase_token,lower_letter_spots] = uppercaseModification(token)

capital_letters={'Α','Β','Γ','Δ','Ε','Ζ','Η','Θ','Ι','Κ','Λ','Μ','Ν','Ξ','Ο','Π'...
    'Ρ','Σ','Τ','Υ','Φ','Χ','Ψ','Ω'};
lower_letter_spots = ~ismember(token(:),capital_letters(:));
uppercase_token = upper(token);

end
