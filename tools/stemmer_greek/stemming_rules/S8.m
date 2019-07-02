
if len_w > 2 && endsWith(uword,{'ΑΡΑΚΙ','ΑΡΑΚΙΑ','ΑΚΙ','ΑΚΙΑ','ΙΤΣΑ','ΙΤΣΑΣ','ΙΤΣΕΣ','ΙΤΣΩΝ'})
   
    r9=cat(1,r9,termList{word_number});

    len_suffix=endsWith(uword,{'ΑΡΑΚΙ','ΑΡΑΚΙΑ','ΑΚΙ','ΑΚΙΑ','ΙΤΣΑ','ΙΤΣΑΣ','ΙΤΣΕΣ','ΙΤΣΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΝΘΡ','ΒΑΜΒ','ΒΡ','ΚΑΙΜ','ΚΟΝ','ΚΟΡ','ΛΑΒΡ','ΛΟΥΛ','ΜΕΡ','ΜΟΥΣΤ','ΝΑΓΚΑΣ','ΠΛ','Ρ'...
                        'ΡΥ','Σ','ΣΚ','ΣΟΚ','ΣΠΑΝ','ΤΖ','ΦΑΡΜ','Χ','ΚΑΠΑΚ','ΑΛΙΣΦ','ΑΜΒΡ','Κ','ΦΥΛ','ΚΑΤΡΑΠ'...
                        'ΚΛΙΜ','ΜΑΛ','ΣΛΟΒ','ΣΦ','ΤΣΕΧΟΣΛΟΒ'})
        uword = cat(2,uword,'ΑΚ');
    elseif ismember(uword,{'Β','ΒΑΛ','ΓΙΑΝ','ΓΛ','Ζ','ΗΓΟΥΜΕΝ','ΚΑΡΔ','ΚΟΝ','ΜΑΚΡΥΝ','ΝΥΦ','ΠΑΤΕΡ','Π','ΣΚ','ΤΟΣ','ΤΡΙΠΟΛ'})
        uword = cat(2,uword,'ΙΤΣ');
    elseif endsWith(uword,{'ΚΟΡ'})
        uword = cat(2,uword,'ΙΤΣ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

