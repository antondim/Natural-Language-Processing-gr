if len_w > 3 && endsWith(uword,{'ΜΑΤΑ','ΜΑΤΩΝ','ΜΑΤΟΣ'})
    r36=cat(1,r36,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΜΑΤΑ','ΜΑΤΩΝ','ΜΑΤΟΣ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
  
    uword=cat(2,uword,'ΜΑ');
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

