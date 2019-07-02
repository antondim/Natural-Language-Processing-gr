function [ sentences ,initial_sentences] = sentenceSplitter( textfile )

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for greek texts sentence splitting.
% 
% Author : Antonopoulos Dimitrios, 2018-2019
%
% 1. Initially splits the text into sentences based on delimiters list
%
% 2. Next, it applies rules based on the following and previous word
%    of the splitting condition (delimiter).
%
% 3. In the end we get the complex sentences.
%
% Type of rules :
%   a) Honorific abbreviations
%   b) Punctuation rules + {capital,lower letters check}
%   c) General abbreviations
%
%  Delimiters = punctuations/abbreviations/honorifics = > Fully extensible
%
% Abbreviations lists can be found in :
%   1. http://www.komvos.edu.gr/dictionaries/triantafyllidis/syntomografies.htm
%   2. http://publications.europa.eu/code/el/el-5000300.htm
%
% Note : Only length > 1 delimiters between '.' (e.g {εκατ. , δισεκατ. }) should be added,
%        because of a rule which takes care of the rest (length = 1, e.g {κ.ο.κ, κ.α}). 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initializations
delimiters = {'.','·','...','!',';','*','κ.','δρ.','δηλ.','εκ.','εκατ.','π.Χ','μ.Χ'...
               'χιλ.','χλμ.','κυβ.','πρβλ.','πρβ.','πβ.','συνημμ.','κτλ.','κοιν.','κτλ.'};
           
% Rule-helping lists         
general_abbreviations = {'π.Χ','π.Χ.','μ.Χ','μ.Χ.','κ.','εκ.','εκατ.','δηλ.','εκ.','εκατ.'...
               'χιλ.','χλμ.','κυβ.','πρβλ.','πρβ.','πβ.','συνημμ.','κτλ.','κοιν.','κτλ.'};

sentence_ending_punctuations = {'.','·','!',';','*','...'};

honorifics = {'δρ.'};

capital_greek_letters={'Α','Β','Γ','Δ','Ε','Ζ','Η','Θ','Ι','Κ','Λ','Μ','Ν','Ξ','Ο','Π'...
    'Ρ','Σ','Τ','Υ','Φ','Χ','Ψ','Ω','Ώ','Ά','Ή','Ί','Έ','Ό','Ύ'};

lower_greek_letters={'α','β','γ','δ','ε','ζ','η','θ','ι','κ','λ','μ','ν','ξ','ο','π'...
    'ρ','σ','τ','υ','φ','χ','ψ','ω','ά','έ','ή','ί','ύ','ό','ώ'};

text = fileread(textfile);

[sentences,split_conditions]= strsplit(text,delimiters);

init_sents=strtrim(sentences);
init_sents_x=sentences;
mark=[];

% main
for i=1:length(split_conditions)
    if ~isempty(init_sents{i+1}) % EOF?
        
        % HONORIFIC ABBREVIATION RULES
        if ismember(split_conditions(i),honorifics)
            sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
            mark=cat(1,mark,i);
            
        % PUNCTUATION RULES
        elseif ismember(split_conditions(i),sentence_ending_punctuations)
            
            if ismember(init_sents{i+1}(1),capital_greek_letters)
                if ismember(init_sents{i}(end),capital_greek_letters)
                    sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                    mark=cat(1,mark,i);
                else
                    sentences{i}=cat(2,sentences{i},split_conditions{i});
                end
                
            elseif ~isnan(str2double(init_sents{i+1}(1)))
                sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                mark=cat(1,mark,i);
                
            elseif ~ismember(init_sents{i+1}(1),capital_greek_letters) && ~ismember(init_sents{i+1}(1),lower_greek_letters)
                sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                mark=cat(1,mark,i);

            elseif ismember(init_sents{i+1}(1),lower_greek_letters)
                if ismember(init_sents{i}(end),lower_greek_letters) && ismember(split_conditions{i},'.')
                    sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                    mark=cat(1,mark,i);
                else
                    sentences{i}=cat(2,sentences{i},split_conditions{i});
                end
            end
            
        % ABBREVIATION RULES
        elseif ismember(split_conditions(i),general_abbreviations)
            
            if ismember(split_conditions(i),'κ.') && ismember(init_sents_x{i}(end),' ') && ismember(init_sents{i+1}(1),capital_greek_letters)
                sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                mark=cat(1,mark,i);
                
            elseif ismember(init_sents{i+1}(1),capital_greek_letters)
                sentences{i}=cat(2,sentences{i},split_conditions{i});
                
            elseif ismember(init_sents{i+1}(1),lower_greek_letters)
                sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                mark=cat(1,mark,i);
                
            elseif ~ismember(init_sents{i+1}(1),capital_greek_letters) && ~ismember(init_sents{i+1}(1),lower_greek_letters)
                sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
                mark=cat(1,mark,i);
            end
        end
    else %EOF
        sentences{i+1}=cat(2,sentences{i},cat(2,split_conditions{i},sentences{i+1}));
        mark=cat(1,mark,i);
    end
end

sentences(mark)=[];
sentences=strtrim(sentences);
toc
end
