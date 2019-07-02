if len_w > 1 && endsWith(uword,{'ΙΑ','ΙΟΥ','ΙΩΝ'})
   
    r16=cat(1,r16,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΑ','ΙΟΥ','ΙΩΝ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    
    if endsWithVowel1(uword)
        uword = cat(2,uword,'Ι');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

