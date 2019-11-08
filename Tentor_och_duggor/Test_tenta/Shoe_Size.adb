with ada.float_text_IO, ada.text_IO, ada.integer_text_IO; use ada.float_text_IO, ada.text_IO, ada.integer_text_IO;

procedure Shoe_Size is

    procedure put(Max, Min : in float) is 
            converter : integer;
            counter : float;
        begin
            counter := Min;
            while counter /= Max + 0.5 loop
                put("---+");
                counter := counter + 0.5;
            end loop;

            counter := Min;
            new_line;
            put(" ");
            while counter /= Max + 0.5 loop
                if counter = float'floor(counter) + 0.5 then
                    put(counter, 3, 0, 0);
                    counter := counter + 0.5;
                else
                    put(integer(counter), width=>3);
                    counter := counter + 0.5;
                end if;
            end loop;
            counter := Min;

            new_line;
            while counter /= Max + 0.5 loop
                put("---+");
                counter := counter + 0.5;
            end loop;
        end put;

 Min : float := 0.0;
 Max : float := 100.0;
begin
    loop
        if Min < 10.0 then
            put("Mata in undre gräns: ");
            get(min);
        else
            exit;
        end if;
    end loop;

    loop
        if Max > 99.5 then
            put("Mata in övre gräns: ");
            get(Max);
        else
            exit;
        end if;
    end loop;
    
    put(Max, Min);
end Shoe_Size;








