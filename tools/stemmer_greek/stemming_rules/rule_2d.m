if len_w > 2 && endsWith(uword,{'ΕΩΣ','ΕΩΝ'})
   
    r15=cat(1,r15,termList{word_number});

    len_suffix=endsWith(uword,{'ΕΩΣ','ΕΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΡΚ','ΚΑΛΙΑΚ','ΠΕΤΑΛ','ΛΙΧ','ΠΛΕΞ','ΣΚ','Σ','ΦΛ','ΦΡ','ΒΕΛ','ΛΟΥΛ','ΧΝ','ΣΠ','ΤΡΑ','ΦΕ'})
        uword = cat(2,uword,'Ε');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

