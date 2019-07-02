if len_w > 4 && endsWith(uword,{'ΗΣΕΤΕ'})
    r22=cat(1,r22,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΣΕΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];

    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

