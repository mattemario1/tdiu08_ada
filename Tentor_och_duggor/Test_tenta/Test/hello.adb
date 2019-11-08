with ada.text_IO, ada.integer_text_IO, ada.float_text_IO; use ada.text_IO, ada.integer_text_IO, ada.float_text_IO;

procedure hello is

 flt, flt2 : float := 5.4;
 int : integer;
begin
    --flt := 5.4;
    put(flt, 1, 0, 0);

    put(integer(flt));
    flt2 := 2.5 mod 2.0;
    put(flt2);
    flt := float'floor(flt);

    put(flt);

    

end hello;
