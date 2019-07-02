if len_w > 3 && endsWith(uword,{'ΙΔΙΟ','ΙΔΙΑ','ΙΔΙΩΝ'})
   
    r10=cat(1,r10,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΔΙΟ','ΙΔΙΑ','ΙΔΙΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if ismember(uword,{'ΑΙΦΝ','ΙΡ','ΟΛΟ','ΨΑΛ'})
        uword = cat(2,uword,'ΙΔ');
    elseif endsWith(uword,{'Ε','ΠΑΙΧΝ'})
        uword = cat(2,uword,'ΙΔ');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

