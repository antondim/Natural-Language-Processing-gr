if len_w > 4 && endsWith(uword,{'ΩΘΗΚΑ','ΩΘΗΚΕ','ΩΘΗΚΕΣ','ΩΘΗΚΑΜΕ','ΩΘΗΚΑΤΕ','ΩΘΗΚΑΝ','ΩΘΗΚΑΝΕ'})
    r3=cat(1,r3,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΩΘΗΚΑ','ΩΘΗΚΕ','ΩΘΗΚΕΣ','ΩΘΗΚΑΜΕ','ΩΘΗΚΑΤΕ','ΩΘΗΚΑΝ','ΩΘΗΚΑΝΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if endsWith(uword,{'ΑΛ','ΒΙ','ΕΝ','ΥΨ','ΛΙ','ΖΩ','Σ','Χ'}) || ismember(uword,{'ΑΛ','ΒΙ','ΕΝ','ΥΨ','ΛΙ','ΖΩ','Σ','Χ'})
        uword = cat(2,uword,'ΩΝ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end
