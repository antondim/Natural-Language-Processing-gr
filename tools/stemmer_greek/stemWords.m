% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stemmer for greek words
%
% Matlab stemming implementation, based on the improved version of initial
% George Ntais' stemmer ("Development of a Stemmer for the Greek Language"),
% named "Development and Enhancement of a Stemmer for the Greek Language",
% by Spyridon Saroukos.
%
% Author: Antonopoulos Dimitrios, 2018-2019
%
% Input: cell array of strings (e.g {'καλύτερος','καφεδάκι'})
% Output : desirable stem
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [stems,words_in_rules] = stemWords(termList)

disp('Stemming...')

stems={};
words_in_rules={};
removed=0;

r1 = {}; r2 = {}; r3 = {}; r4 = {}; r5 = {}; r6 = {}; r7 = {}; r8 = {}; r9 = {}; r10 = {};
r11 = {}; r12 = {}; r13 = {}; r14 = {}; r15 = {}; r16 = {}; r17 = {}; r18 = {}; r19 = {}; r20 = {};
r21 = {}; r22 = {}; r23={}; r24 = {}; r25 = {}; r26 = {}; r27 = {}; r28 = {}; r29 = {};
r30 = {}; r31 = {}; r32 = {}; r33 = {}; r34 = {}; r35 = {}; r36 = {}; r37 = {}; r38 = {};

% Load stop words, given in the paper of implementation
stops=load('stopwords.mat');
stop_words=stops.stopwords;

for word_number = 1:length(termList)
    word_number
    word = unstressWord(termList{word_number}(:))';
    [uword,cap_spots] = uppercaseModification(word);
    len_w = length(uword);
    isStopWord = ismember(uword,stop_words);
    
    switch isStopWord
        case 1
            stems = cat(1,stems,word);
        case 0
            rule_1;
            S1; S2; S3; S4; S5; S6; S7; S8; S9; S10;
            rule_2a; rule_2b; rule_2c; rule_2d;
            rule_3;
            rule_4;
            rule_5a; rule_5a2; rule_5a3;
            rule_5b;
            rule_5c; rule_5c2; rule_5d;
            rule_5e;
            rule_5f; rule_5f2;
            rule_5g; rule_5g2;
            rule_5h;
            rule_5i;
            rule_5j;
            rule_5k;
            rule_5l; rule_5l2;
            rule_6; rule_6a;
            rule_7;
            
            % if no stemming rule applies to the word
            if cap_spots(1)==0
                stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
            else
                stems = cat(1,stems,lower(uword));
            end
    end
    
end

words_in_rules={r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17...
    r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31,r32,r33,r34,r35,r36,r37,r38};
end

