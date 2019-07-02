if len_w > 3 && endsWith(uword,{'ΗΣΟΥΜΕ','ΗΘΟΥΜΕ','ΟΥΜΕ'})
    r35=cat(1,r35,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΣΟΥΜΕ','ΗΘΟΥΜΕ','ΟΥΜΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΠΑΡΑΣΟΥΣ','Φ','Χ','ΩΡΙΟΠΛ','ΑΖ','ΑΛΛΟΣΟΥΣ','ΑΣΟΥΣ'})...
            || endsWith(uword,{'ΠΑΡΑΣΟΥΣ','Φ','Χ','ΩΡΙΟΠΛ','ΑΖ','ΑΛΛΟΣΟΥΣ','ΑΣΟΥΣ'})
        
        uword=cat(2,uword,'ΟΥΜ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

