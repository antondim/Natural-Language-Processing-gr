if len_w > 4 && endsWith(uword,{'ΙΕΣΤΕ'})
    r26=cat(1,r26,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΙΕΣΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΣΥΜΠ','ΣΥΜΠ','ΑΚΑΤΑΠ','ΑΜΕΤΑΜΦ','ΑΠ','Π'})
        uword=cat(2,uword,'ΙΕΣΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

