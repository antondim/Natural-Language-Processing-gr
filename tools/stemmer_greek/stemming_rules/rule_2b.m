if len_w > 3 && endsWith(uword,{'ΕΔΕΣ','ΕΔΩΝ'})
   
    r13=cat(1,r13,termList{word_number});

    len_suffix=endsWith(uword,{'ΕΔΕΣ','ΕΔΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΟΠ','ΙΠ','ΕΜΠ','ΥΠ','ΓΗΠ','ΔΑΠ','ΚΡΑΣΠ','ΜΙΛ'}) || ...
            endsWith(uword,{'ΚΡΑΣΠ','ΕΜΠ','ΓΗΠ','ΔΑΠ','ΜΙΛ','ΟΠ','ΙΠ','ΥΠ'})
        uword = cat(2,uword,'ΕΔ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

