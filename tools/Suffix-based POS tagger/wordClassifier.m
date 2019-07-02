function [POS_list,text_tagged]=wordClassifier(termsList)

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Simple Greek word-tagger (Part of speech tagger)
% Greek words tagging, based on the manually chosen grammatical suffixes
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% Necessary files: endsWith.m , partsOfSpeechGR.m ,suffixesGR.m
%
% Looping through a termsList string cell-array, and by checking the suffix
% of each word, classifies it into one of the following POS categories:
%
% 1) verb, 2) noun, 3) adjective, 4) comperative adjective, 5) superlative adjective,
% 6) adverb(ws suffix) 7) metoxh active voice, 8) metoxh passive voice, 9) pronoun,
% 10) preposition,  11) article, 12) conjuction, 13) untagged
%
% Input: list of strings (cell array)
% Output: 
%        a) cell array (POS_list), containing the words in separate cell
%        arrays based on their category and in the above stated order.
%
%        b) cell array that contains the POS of each word of the initial
%           text (text_tagged). This will help in the "Contextual Rules" 
%           possible future addition.
%
% Example:[POS_tags,~]=wordClassifier({'παίζοντας','γελώντας','παιδί','αποκοιμιέμαι'})
%
% Note : This simple code, manages to capture the differences between
%        words' class in an extracted vocabulary.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc;
% LOAD the test suffixes and certain Parts of Speech
suffixesGR;
partsOfSpeechGR;

text_tagged={length(termsList)};

% Lexical Rules
for i=1:length(termsList)
    if ismember(termsList(i),pro8eseis)
        text_tagged{i}='preposition';
        continue;
    elseif ismember(termsList(i),ar8ra)
        text_tagged{i}='article';
        continue;
    elseif ismember(termsList(i),syndesmoi)
        text_tagged{i}='conjuction';
        continue;
    elseif ismember(termsList(i),antwnymies)
        text_tagged{i}='pronoun';
        continue;
    elseif  endsWith(termsList{i},adjectives_suffixes)
        text_tagged{i}='adjective';
        continue;
    elseif endsWith(termsList{i},superlative_adjectives_suffixes)
        text_tagged{i}='superlative_adjective';
        continue;
    elseif endsWith(termsList{i},comperative_adjectives_suffixes)
        text_tagged{i}='comperative_adjective';
        continue;
    elseif endsWith(termsList{i},verbs_suffixes)
        text_tagged{i}='verb';
        continue;
    elseif endsWith(termsList{i},metoxes_suffixes)
        text_tagged{i}='metoxh_passive_voice';
        continue;
    elseif endsWith(termsList{i},metoxes_active_voice_suffixes)
        text_tagged{i}='metoxh_active_voice';
        continue;
    elseif endsWith(termsList{i},advs_ws_suffixes) && ~endsWith(termsList{i},{'εως','έως','εώς'})
        text_tagged{i}='adverb_ws';
        continue;
    elseif endsWith(termsList{i},nouns_suffixes)
        text_tagged{i}='noun';
        continue;
    else
        text_tagged{i}='untagged';
        continue;
    end
end

% Sort the lists alphabetically
v=sort(termsList(ismember(text_tagged,'verb')));
n=sort(termsList(ismember(text_tagged,'noun')));
aj=sort(termsList(ismember(text_tagged,'adjective')));
caj=sort(termsList(ismember(text_tagged,'comperative_adjective')));
saj=sort(termsList(ismember(text_tagged,'superlative_adjective')));
adws=sort(termsList(ismember(text_tagged,'adverb_ws')));
mav=sort(termsList(ismember(text_tagged,'metoxh_active_voice')));
mpv=sort(termsList(ismember(text_tagged,'metoxh_passive_voice')));
prns=sort(termsList(ismember(text_tagged,'pronoun')));
prep=sort(termsList(ismember(text_tagged,'preposition')));
art=sort(termsList(ismember(text_tagged,'article')));
cnj=sort(termsList(ismember(text_tagged,'conjuction')));
untagged=sort(termsList(ismember(text_tagged,'untagged')));

POS_list={v,n,aj,caj,saj,adws,mav,mpv,prns,prep,art,cnj,untagged};

end