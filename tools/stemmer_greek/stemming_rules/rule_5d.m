if len_w > 4 && endsWith(uword,{'ΟΝΤΑΣ','ΩΝΤΑΣ'})
    r24=cat(1,r24,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΟΝΤΑΣ','ΩΝΤΑΣ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,'ΑΡΧ')
        uword=cat(2,uword,'ΟΝΤ');
    elseif ismember(uword,'ΚΡΕ')
        uword=cat(2,uword,'ΩΝΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

