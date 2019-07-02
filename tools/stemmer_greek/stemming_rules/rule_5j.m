if len_w > 2 && endsWith(uword,{'ΗΣΕ','ΗΣΟΥ','ΗΣΑ'})
    r32=cat(1,r32,termList{word_number});
    
    len_suffix=endsWith(uword,{'ΗΣΕ','ΗΣΟΥ','ΗΣΑ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'Ν','ΧΕΡΣΟΝ','ΔΩΔΕΚΑΝ','ΕΡΗΜΟΝ','ΜΕΓΑΛΟΝ','ΕΠΤΑΝ'})...
            || endsWith(uword,{'ΧΕΡΣΟΝ','ΔΩΔΕΚΑΝ','ΕΡΗΜΟΝ','ΜΕΓΑΛΟΝ','ΕΠΤΑΝ','Ν'})
        
        uword=cat(2,uword,'ΗΣ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

