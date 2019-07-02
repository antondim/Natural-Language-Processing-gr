
if len_w > 3 && endsWith(uword,{'ΙΣΜΟ','ΙΣΜΟΙ','ΙΣΜΟΣ','ΙΣΜΟΥ','ΙΣΜΟΥΣ','ΙΣΜΩΝ'})
   
    r7=cat(1,r7,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΣΜΟ','ΙΣΜΟΙ','ΙΣΜΟΣ','ΙΣΜΟΥ','ΙΣΜΟΥΣ','ΙΣΜΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΓΝΩΣΤΙΚ','ΑΤΟΜΙΚ','ΓΝΩΣΤΙΚ','ΕΘΝΙΚ','ΕΚΛΕΚΤΙΚ','ΣΚΕΠΤΙΚ','ΤΟΠΙΚ'})
        uword(length(uword)-1:end)=[];
    elseif ismember(uword,{'ΣΕ','ΜΕΤΑΣΕ','ΜΙΚΡΟΣΕ','ΕΓΚΛΕ','ΑΠΟΚΛΕ'})
        uword = cat(2,uword,'ΙΣΜ');
    elseif ismember(uword,{'ΔΑΝΕ','ΑΝΤΙΔΑΝΕ'})
        uword = cat(2,uword,'Ι');
    elseif ismember(uword,{'ΑΛΕΞΑΝΔΡΙΝ','ΒΥΖΑΝΤΙΝ','ΘΕΑΤΡΙΝ'})
        uword = cat(2,uword,'ΙΝ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

