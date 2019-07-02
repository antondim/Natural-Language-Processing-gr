
if len_w > 3 && endsWith(uword,{'ΙΣΤΟΣ','ΙΣΤΟΥ','ΙΣΤΟ','ΙΣΤΕ','ΙΣΤΟΙ','ΙΣΤΩΝ','ΙΣΤΟΥΣ','ΙΣΤΗ','ΙΣΤΗΣ','ΙΣΤΑ','ΙΣΤΕΣ'})
   
    r6=cat(1,r6,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΣΤΟΣ','ΙΣΤΟΥ','ΙΣΤΟ','ΙΣΤΕ','ΙΣΤΟΙ','ΙΣΤΩΝ','ΙΣΤΟΥΣ','ΙΣΤΗ','ΙΣΤΗΣ','ΙΣΤΑ','ΙΣΤΕΣ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    if  ismember(uword,{'Μ','Π','ΑΠ','ΑΡ','ΗΔ','ΚΤ','ΣΚ','ΣΧ','ΥΨ','ΦΑ','ΧΡ','ΧΤ','ΑΚΤ','ΑΟΡ','ΑΣΧ','ΑΤΑ','ΑΧΝ','ΑΧΤ','ΓΕΜ'...
            'ΓΥΡ','ΕΜΠ','ΕΥΠ','ΕΧΘ','ΗΦΑ','ΚΑΘ','ΚΑΚ','ΚΥΛ','ΛΥΓ','ΜΑΚ','ΜΕΓ','ΤΑΧ','ΦΙΛ','ΧΩΡ'})
        uword = cat(2,uword,'ΙΣΤ');
    elseif ismember(uword,{'ΔΑΝΕ','ΣΥΝΑΘΡΟ','ΚΛΕ','ΣΕ','ΕΣΩΚΛΕ','ΑΣΕ','ΠΛΕ'})
        uword = cat(2,uword,'Ι');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

