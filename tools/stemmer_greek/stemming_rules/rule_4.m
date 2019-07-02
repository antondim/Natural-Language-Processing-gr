if len_w > 2 && endsWith(uword,{'ΙΚΑ','ΙΚΟ','ΙΚΟΥ','ΙΚΩΝ'})
   
    r17=cat(1,r17,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΚΑ','ΙΚΟ','ΙΚΟΥ','ΙΚΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if endsWithVowel1(uword) || ismember(uword,{'ΑΛ','ΑΔ','ΕΝΔ','ΑΜΑΝ','ΑΜΜΟΧΑΛ','ΗΘ','ΑΝΗΘ','ΑΝΤΙΔ','ΦΥΣ'...
            'ΒΡΩΜ','ΓΕΡ','ΕΞΩΔ','ΚΑΛΠ','ΚΑΛΛΙΝ','ΚΑΤΑΔ','ΜΟΥΛ','ΜΠΑΝ','ΜΠΑΓΙΑΤ','ΜΠΟΛ','ΜΠΟΣ','ΝΙΤ','ΞΙΚ'...
            'ΣΥΝΟΜΗΛ','ΠΕΤΣ','ΠΙΤΣ','ΠΙΚΑΝΤ','ΠΛΙΑΤΣ','ΠΟΣΤΕΛΝ','ΠΡΩΤΟΔ','ΣΕΡΤ','ΣΥΝΑΔ','ΤΣΑΜ','ΥΠΟΔ','ΦΙΛΟΝ'...
            'ΦΥΛΟΔ','ΧΑΣ'})
        uword = cat(2,uword,'ΙΚ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

