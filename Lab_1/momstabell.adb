

With ada.float_text_IO, ada.text_IO;
Use ada.float_text_IO, ada.text_IO;


Procedure momstabell is



F,L,S,M:Float;
H:Float:=100.0;

begin


    New_line(3);

    Put("Första Pris:");  
    get(F);

    while (F<=0.0) loop 
    Put("Första Pris:");  
    get(F);
        end loop;
    
    Put("Sista Pris:");
    get(L);
    
    while (L<=0.0 or L<=F) loop
    put("Sista Pris:");
    get(L);
        end loop;

    Put("Steg:");
    get(S);

    while (S<=0.0) loop
    put("Steg:");
    get(S);
        end loop;

    Put("Momsprocent:");
    get(M);

    while (M<=0.0) loop
    put("Momsprocent:");
    get(M);
        end loop;

    New_line(2);


    Put("===Momstabell===");  
    New_line(1);
    Put("Pris utan moms     Moms    Pris med moms");
    



    --loop

    while F<=L loop
    
    New_line(1);

 
    Put(F, 6, 2, 0);
    
    Put((M/100.0)*F, 11, 2, 0);
    
    Put((F+F*M/H), 10, 2, 0);

    F:=F+S;

    

        end loop;


    









end;





