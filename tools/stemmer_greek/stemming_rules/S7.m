
if len_w > 4 && endsWith(uword,{'ΑΡΑΚΙ','ΑΡΑΚΙΑ','ΟΥΔΑΚΙ','ΟΥΔΑΚΙΑ'})
    
    r8=cat(1,r8,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΑΡΑΚΙ','ΑΡΑΚΙΑ','ΟΥΔΑΚΙ','ΟΥΔΑΚΙΑ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'Χ','Σ'})
        uword = cat(2,uword,'ΑΡΑΚΙ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end