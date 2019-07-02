if len_w > 3 && endsWith(uword,{'ΟΥΔΕΣ','ΟΥΔΩΝ'})
   
    r14=cat(1,r14,termList{word_number});

    len_suffix=endsWith(uword,{'ΟΥΔΕΣ','ΟΥΔΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΡΚ','ΚΑΛΙΑΚ','ΠΕΤΑΛ','ΛΙΧ','ΠΛΕΧ','ΣΚ','Σ','ΦΛ','ΦΡ','ΒΕΛ','ΛΟΥΛ','ΧΝ','ΣΠ','ΤΡΑ','ΦΕ'}) || ...
               endsWith(uword,{'ΚΑΛΙΑΚ','ΠΕΤΑΛ','ΠΛΕΧ','ΛΟΥΛ','ΛΙΧ','ΒΕΛ','ΑΡΚ','ΤΡΑ','ΣΚ','ΦΛ','ΦΡ','ΧΝ','ΣΠ','ΦΕ','Σ'})
        uword = cat(2,uword,'ΟΥΔ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

