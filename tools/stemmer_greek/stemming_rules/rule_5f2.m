if len_w > 4 && endsWith(uword,{'ΕΣΤΕ'})
    r27=cat(1,r27,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΕΣΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΛ','ΑΡ','ΕΚΤΕΛ','Ζ','Μ','Ξ','ΠΑΡΑΚΑΛ','ΠΡΟ','ΝΙΣ'})
        uword=cat(2,uword,'ΕΣΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

