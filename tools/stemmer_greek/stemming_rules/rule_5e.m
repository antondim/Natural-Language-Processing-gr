if len_w > 5 && endsWith(uword,{'ΙΟΜΑΣΤΕ','ΟΜΑΣΤΕ'})
    r25=cat(1,r25,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΙΟΜΑΣΤΕ','ΟΜΑΣΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,'ΟΝ')
        uword=cat(2,uword,'ΟΜΑΣΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

