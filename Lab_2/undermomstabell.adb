    with ada.text_IO, ada.float_text_IO; use ada.text_IO, ada.float_text_IO;




    procedure undermomstabell is


        procedure inmatning (item:out float; item2:in float;text:in string) is
        
        begin
        
        put(text);
        get(item);

        while item<=item2 loop
        put(text);
        get(item);
            end loop;

                end inmatning;


        procedure tabell (item1,item2,item3,item4:in float) is
       



     
            procedure rakningar (F,L,S,M:in float) is
            



            tempF:float:=F;           


            begin

            
            while(tempF<=L) loop

            new_line(1);

            put(tempF, 6, 2, 0);
        
            Put((M/100.0)*F, 11, 2, 0);
        
            Put((tempF+tempF*M/100.0), 10, 2, 0);

            tempF:=tempF+S;

                end loop;
            
            
            


                    end rakningar;        


        



        begin

        Put("===Momstabell===");  
        New_line(1);
        Put("Pris utan moms     Moms    Pris med moms");

        rakningar(item1,item2,item3,item4);
            
                end tabell;
        







    F,L,S,M:float;
    noll:float:=0.0;

    begin


    inmatning(F,noll, "Första pris:");
    inmatning(L,F, "Sista pris:");
    inmatning(S,noll, "Steg:");
    inmatning(M,noll, "Moms:");
    tabell(F,L,S,M);



            end undermomstabell;



