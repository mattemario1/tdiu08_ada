with ada.text_IO, ada.integer_text_IO; use ada.text_IO, ada.integer_text_IO;

procedure chips is
    type Chip_Value_type is array (1..6) of integer;

    procedure get_chip(Chip_Value : out  Chip_Value_type) is
        begin
            for I in Chip_Value_type'range loop
                get(Chip_Value(I));
            end loop;
        end get_chip;


    procedure Calc_Chip(Chip_Value, Chip_Amount : in out Chip_Value_type; Total_Amount : in out integer) is
        begin
            for I in Chip_Value_type'range loop
                Chip_Amount(I) := 0;
                loop
                    if Chip_Value(I) <= Total_Amount then
                        Total_Amount := Total_Amount - Chip_Value(I);
                        Chip_Amount(I) := Chip_Amount(I) + 1;
                    else
                        exit;
                    end if;
                end loop;
            end loop;
        end Calc_Chip;


    procedure put_chip(Chip_Value, Chip_Amount : in Chip_Value_type) is
        begin
            for I in Chip_Value_type'range loop
                if Chip_Amount(I) /= 0 then
                    put(Chip_Amount(I), width=>1);
                    put("st ");
                    put(Chip_Value(I), width=>1);
                    put("-marker");
                    new_line;
                end if;
            end loop;
        end put_chip;


 Chip_Value, Chip_Amount : Chip_Value_type;
 Total_Amount : integer;
begin
    put("Mata in antal chips: ");
    get(Total_Amount);
    put("Mata in värden på färger (från störst till minst): ");
    get_chip(Chip_Value);
    put(Total_Amount);
    Calc_Chip(Chip_Value, Chip_Amount, Total_Amount);

    new_line;
    put_line("Du får:");
    put_chip(Chip_Value, Chip_Amount);

end chips;









