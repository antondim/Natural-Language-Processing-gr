if len_w > 2 && endsWith(uword,{'ΗΚΑ','ΗΚΕΣ','ΗΚΕ'})
    r29=cat(1,r29,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΚΑ','ΗΚΕΣ','ΗΚΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΔΙΑΘ','Θ','ΠΑΡΑΚΑΤΑΘ','ΠΡΟΣΘ','ΣΥΝΘ','ΣΚΩΛ','ΣΚΟΥΛ','ΝΑΡΘ','ΣΦ','ΟΘ','ΠΙΘ'})...
            || endsWith(uword,{'ΣΚΩΛ','ΣΚΟΥΛ','ΝΑΡΘ','ΣΦ','ΟΘ','ΠΙΘ'})
        
        uword=cat(2,uword,'ΗΚ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

