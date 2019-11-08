with ada.text_IO; use ada.text_IO;

procedure rotate_line is


begin
    loop
        put(Ascii.Esc & "[2J" & Ascii.Esc &"[1;1H");
        put("\");
        delay 0.1;
        put(Ascii.Esc & "[2J" & Ascii.Esc &"[1;1H");
        put("|");
        delay 0.1;
        put(Ascii.Esc & "[2J" & Ascii.Esc &"[1;1H");
        put("/");
        delay 0.1;
        put(Ascii.Esc & "[2J" & Ascii.Esc &"[1;1H");
        put("-");
        delay 0.1;
    end loop;
end rotate_line;

