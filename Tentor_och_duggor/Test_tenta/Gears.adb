with ada.text_IO, ada.integer_text_IO, ada.float_text_IO; use ada.text_IO, ada.integer_text_IO, ada.float_text_IO;

procedure Gears is
    type Gear_teeth_array_type is array (1..100) of float;


    procedure get_teeth(Gear_teeth : out Gear_teeth_array_type) is
         n : integer := 1;
         f : float;
        begin
            
                get(gear_teeth(n));
                n := n + 1;
                get(f);
                put(f, 1, 0, 0);
        end get_teeth;





 Gear_teeth : Gear_teeth_array_type;
 Spins : Float;
begin
    put("Mata in hur många varv som kugghjulet längst till vänster snurras: ");
    get(Spins);
    put("Mata in sekvensen kugghjul: ");
    get_teeth(Gear_teeth);
    put("Kugghjulen snurrar: ");
end Gears;
