if len_w > 9 && (endsWith(uword,{'ΚΑΘΕΣΤΩΤΟΣ','ΚΑΘΕΣΤΩΤΩΝ'}) || ismember(uword,{'ΚΑΘΕΣΤΩΤΟΣ','ΚΑΘΕΣΤΩΤΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-3 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 8 && (endsWith(uword,{'ΓΕΓΟΝΟΤΟΣ','ΓΕΓΟΝΟΤΩΝ'}) || ismember(uword,{'ΓΕΓΟΝΟΤΟΣ','ΓΕΓΟΝΟΤΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-3 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 8 && (endsWith(uword,{'ΚΑΘΕΣΤΩΤΑ'}) || ismember(uword,{'ΚΑΘΕΣΤΩΤΑ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-2 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 7 && (endsWith(uword,{'ΤΑΤΟΓΙΟΥ','ΤΑΤΟΓΙΩΝ'}) || ismember(uword,{'ΤΑΤΟΓΙΟΥ','ΤΑΤΟΓΙΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-3 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 7 && (endsWith(uword,{'ΓΕΓΟΝΟΤΑ'}) || ismember(uword,{'ΓΕΓΟΝΟΤΑ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-2 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 7 && (endsWith(uword,{'ΚΑΘΕΣΤΩΣ'}) || ismember(uword,{'ΚΑΘΕΣΤΩΣ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-1 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 6 && (endsWith(uword,{'ΓΕΓΟΝΟΣ'}) || ismember(uword,{'ΓΕΓΟΝΟΣ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-1 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 6 && (endsWith(uword,{'ΟΛΟΓΙΟΥ','ΟΛΟΓΙΩΝ','ΣΚΑΓΙΟΥ','ΣΚΑΓΙΩΝ','ΚΡΕΑΤΟΣ','ΚΡΕΑΤΩΝ','ΠΕΡΑΤΟΣ','ΠΕΡΑΤΩΝ','ΤΕΡΑΤΟΣ','ΤΕΡΑΤΩΝ'}) ||...
                ismember(uword,{'ΟΛΟΓΙΟΥ','ΟΛΟΓΙΩΝ','ΣΚΑΓΙΟΥ','ΣΚΑΓΙΩΝ','ΚΡΕΑΤΟΣ','ΚΡΕΑΤΩΝ','ΠΕΡΑΤΟΣ','ΠΕΡΑΤΩΝ','ΤΕΡΑΤΟΣ','ΤΕΡΑΤΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-3 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 6 && (endsWith(uword,{'ΤΑΤΟΓΙΑ'}) || ismember(uword,{'ΤΑΤΟΓΙΑ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-2 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 5 && (endsWith(uword,{'ΠΕΡΑΤΗ','ΠΕΡΑΤΑ','ΤΕΡΑΤΑ','ΚΡΕΑΤΑ','ΣΚΑΓΙΑ','ΟΛΟΓΙΑ'}) ||...
                    ismember(uword,{'ΠΕΡΑΤΗ','ΠΕΡΑΤΑ','ΤΕΡΑΤΑ','ΚΡΕΑΤΑ','ΣΚΑΓΙΑ','ΟΛΟΓΙΑ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-2 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 5 && (endsWith(uword,{'ΦΑΓΙΟΥ','ΦΑΓΙΩΝ','ΣΟΓΙΟΥ','ΣΟΓΙΩΝ'}) || ismember(uword,{'ΦΑΓΙΟΥ','ΦΑΓΙΩΝ','ΣΟΓΙΟΥ','ΣΟΓΙΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-3 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 4 && (endsWith(uword,{'ΦΑΓΙΑ','ΣΟΓΙΑ','ΦΩΤΟΣ','ΦΩΤΩΝ'}) || ismember(uword,{'ΦΑΓΙΑ','ΣΟΓΙΑ','ΦΩΤΟΣ','ΦΩΤΩΝ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-2 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 4 && (endsWith(uword,{'ΚΡΕΑΣ','ΤΕΡΑΣ','ΠΕΡΑΣ'}) || ismember(uword,{'ΚΡΕΑΣ','ΤΕΡΑΣ','ΠΕΡΑΣ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-1 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 3 && (endsWith(uword,{'ΦΩΤΑ'}) || ismember(uword,{'ΦΩΤΑ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w-1 : end)=[];
        stems=cat(1,stems,word);
        continue;
end

if len_w > 2 && (endsWith(uword,{'ΦΩΣ'}) || ismember(uword,{'ΦΩΣ'}))
        r1=cat(1,r1,termList{word_number});
        word(len_w)=[];
        stems=cat(1,stems,word);
        continue;
end

