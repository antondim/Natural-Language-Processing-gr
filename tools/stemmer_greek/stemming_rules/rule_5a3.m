if len_w > 2 && endsWith(uword,{'ΑΜΕ'})
    r20=cat(1,r20,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΑΜΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
if ismember(uword,{'ΑΝΑΠ','ΑΠΟΘ','ΑΠΟΚ','ΑΠΟΣΤ','ΒΟΥΒ','ΞΕΘ','ΟΥΛ','ΠΕΘ','ΠΙΚΡ','ΠΟΤ','ΣΙΧ','Χ'})
    uword=cat(2,uword,'ΑΜ');
end
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

