if len_w > 2 && endsWith(uword,{'ΗΣΤΕ'})
    r33=cat(1,r33,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΣΤΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΣΒ','ΣΒ','ΑΧΡ','ΧΡ','ΑΠΛ','ΑΕΙΜΝ','ΔΥΣΧΡ','ΕΥΧΡ','ΚΟΙΝΟΧΡ','ΠΑΛΙΜΨ'})...
            || endsWith(uword,{'ΑΣΒ','ΣΒ','ΚΟΙΝΟΧΡ','ΔΥΣΧΡ','ΕΥΧΡ','ΑΧΡ','ΧΡ','ΑΠΛ','ΑΕΙΜΝ','ΠΑΛΙΜΨ'})
        
        uword=cat(2,uword,'ΗΣΤ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

