with ada.text_IO, ada.integer_text_IO, ada.float_text_IO ; use ada.text_IO, ada.integer_text_IO, ada.float_text_IO;

procedure Paper_Size is

    procedure calc(H, V : in out float; Size : in out integer) is
        begin
            if Size > 0 then
                H := H/2.0;
                V := V/2.0;
                Size := Size - 1;
                calc(H, V, Size);
            end if;
        end calc;


 H : float := 1189.0;
 V : float := 841.0;
 Size : integer;
 a : character;
begin
    put("Vilket papper vill du veta storleken på: ");
    get(a);
    get(Size);

    calc(H, V, Size);

    new_line;
    put("Dimensionerna på ett A4­papper är ");
    put(V, 1, 1, 0);
    put(" x ");
    put(H, 1, 0, 0);
    put(" mm");


end Paper_Size;
