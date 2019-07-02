if len_w > 3 && endsWith(uword,{'ΗΣΟΥΝΕ','ΗΘΟΥΝΕ','ΟΥΝΕ'})
    r34=cat(1,r34,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΣΟΥΝΕ','ΗΘΟΥΝΕ','ΟΥΝΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'Ν','Ρ','ΣΠΙ','ΣΤΡΑΒΟΜΟΥΤΣ','ΚΑΚΟΜΟΥΤΣ','ΕΞΩΝ'})...
            || endsWith(uword,{'Ν','Ρ','ΣΠΙ','ΣΤΡΑΒΟΜΟΥΤΣ','ΚΑΚΟΜΟΥΤΣ','ΕΞΩΝ'})
        
        uword=cat(2,uword,'ΟΥΝ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

