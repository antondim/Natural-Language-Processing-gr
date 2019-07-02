if len_w > 3 && endsWith(uword,{'ΙΣΚΟΣ','ΙΣΚΟΥ','ΙΣΚΟ','ΙΣΚΕ'})
   
    r11=cat(1,r11,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΣΚΟΣ','ΙΣΚΟΥ','ΙΣΚΟ','ΙΣΚΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'Δ','ΙΒ','ΜΗΝ','Ρ','ΦΡΑΓΚ','ΛΥΚ','ΟΒΕΛ'})
        uword = cat(2,uword,'ΙΣΚ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

