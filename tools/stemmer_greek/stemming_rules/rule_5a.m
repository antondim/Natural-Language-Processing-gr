if ismember(uword,{'ΑΓΑΜΕ'})
   r18=cat(1,r18,termList{word_number});

    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end-1))));
    else
        stems = cat(1,stems,lower(uword(1:end-1)));
    end
    
    continue;
end

