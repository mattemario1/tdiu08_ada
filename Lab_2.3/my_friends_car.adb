with ada.float_text_IO, ada.text_IO; use ada.text_IO;

procedure my_friends_car is

package IO renames ada.float_text_IO;

    procedure put (text:in string; item:out float) is

    begin        
        put(text);
        IO.get(item);

        while item<=0.0 loop
            put(text);
            IO.get(item);
        end loop;
    end put;
        
    


    function K_calc (S2, T2:float) return float is
    
    begin
        return (T2/S2);
   end K_calc;


    function T0_calc(T1, S1, K:float) return float is

    begin
       return (T1 - S1*K);
    end T0_calc;


    function S3_calc (T0, K:float) return float is

    begin
        return  (T0/K);
    end S3_calc;



S1, S2, S3, T1, T2, T0, K:Float;

begin
    new_line(1);
    
    put("Först kör vi sträckan S1 (i mil):", S1);

    put("Vi tankar nu full tank, T1 (i liter):", T1);

    put("Nu kör vi sträckan S2 (i mil):", S2);   

    put("Vi tankar nu full tank T2 (i liter):", T2);

    K:=K_calc(S2, T2);

    T0:=T0_calc(T1, S1, K);

    S3:=S3_calc(T0, K);

    new_line(1);

    put("Bilen drar ");
    IO.put(K, 1, 2, 0);
    put_line(" liter / mil.");


    put("Ur tanken saknadesdet från början ");
    IO.put(T0, 1, 2, 0);
    put_line(" liter.");

    put("Vi kör sedan exakt ");
    IO.put(S3, 1, 2, 0);
    put_line(" mil och lämnar bilen där!");
    


end my_friends_car;













