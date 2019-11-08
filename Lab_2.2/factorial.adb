       


     function factorial (A:in integer) return integer is
        
        variable:integer:=A;
        begin

        for N in 1..variable-1 loop
        
         variable:=(variable*N);
         
        
            end loop;
       -- t.ex. 5*1*2*3*4
         return (variable);   

                    end factorial;
