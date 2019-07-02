if len_w > 3 && endsWith(uword,{'ΑΔΕΣ','ΑΔΩΝ'})
   
    r12=cat(1,r12,termList{word_number});

    len_suffix=endsWith(uword,{'ΑΔΕΣ','ΑΔΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ~endsWith(uword,{'ΟΚ','ΜΑΜ','ΜΑΝ','ΜΠΑΜΠ','ΠΑΤΕΡ','ΓΙΑΤΙ','ΝΤΑΝΤ','ΚΥΡ','ΘΕΙ','ΠΕΘΕΡ'})
        uword = cat(2,uword,'ΑΔ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

