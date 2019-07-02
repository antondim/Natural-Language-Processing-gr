if len_w > 2 && endsWith(uword,{'ΟΥΣΑ','ΟΥΣΕΣ','ΟΥΣΕ'})
    r30=cat(1,r30,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΟΥΣΑ','ΟΥΣΕΣ','ΟΥΣΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΦΑΡΜΑΚ','ΧΑΔ','ΑΓΚ','ΑΝΑΡΡ','ΒΡΟΜ','ΕΚΛΙΠ','ΛΑΜΠΙΔ','ΛΕΧ','Μ','ΠΑΤ','Ρ','Λ','ΜΕΔ','ΜΕΣΑ'...
                        'ΥΠΟΤΕΙΝ','ΑΜ','ΑΙΘ','ΑΝΗΚ','ΔΕΣΠΟΖ','ΕΝΔΙΑΦΕΡ','ΔΕ','ΔΕΥΤΕΡΕΥ','ΚΑΘΑΡΕΥ','ΠΛΕ','ΤΣΑ'...
                        'ΠΟΔΑΡ','ΒΛΕΠ','ΠΑΝΤΑΧ','ΦΡΥΔ','ΜΑΝΤΙΛ','ΜΑΛΛ','ΚΥΜΑΤ','ΛΑΧ','ΛΗΓ','ΦΑΓ','ΟΜ','ΠΡΩΤ'})...
            || endsWith(uword,{'ΠΟΔΑΡ','ΒΛΕΠ','ΠΑΝΤΑΧ','ΦΡΥΔ','ΜΑΝΤΙΛ','ΜΑΛΛ','ΚΥΜΑΤ','ΛΑΧ','ΛΗΓ','ΦΑΓ','ΟΜ','ΠΡΩΤ'})
        
        uword=cat(2,uword,'ΟΥΣ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

