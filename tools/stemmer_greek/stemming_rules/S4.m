
if len_w > 2 && endsWith(uword,{'ΙΣΩ','ΙΣΕΙΣ','ΙΣΕΙ','ΙΣΟΥΜΕ','ΙΣΕΤΕ','ΙΣΟΥΝ','ΙΣΟΥΝΕ'})
   
    r5=cat(1,r5,termList{word_number});

    len_suffix=endsWith(uword,{'ΙΣΩ','ΙΣΕΙΣ','ΙΣΕΙ','ΙΣΟΥΜΕ','ΙΣΕΤΕ','ΙΣΟΥΝ','ΙΣΟΥΝΕ'});
    
    uword(len_w-(len_suffix-1) : end)=[];
    if  ismember(uword,{'ΑΝΑΜΠΑ','ΑΘΡΟ','ΕΜΠΑ','ΕΣΕ','ΕΣΩΚΛΕ','ΕΠΑ','ΞΑΝΑΠΑ','ΕΠΕ','ΠΕΡΙΠΑ','ΣΥΝΑΘΡΟ'...
            'ΔΑΝΕ','ΚΛΕ','ΧΑΡΤΟΠΑ','ΕΞΑΡΧΑ','ΜΕΤΕΠΕ','ΑΠΟΚΛΕ','ΑΠΕΚΛΕ','ΕΚΛΕ','ΠΕ'})
        uword = cat(2,uword,'Ι');
    end
    
    if cap_spots(1)==0
        stems=cat(1,stems,cat(2,upper(uword(1)),lower(uword(2:end))));
    else
        stems = cat(1,stems,lower(uword));
    end
    
    continue;
end

