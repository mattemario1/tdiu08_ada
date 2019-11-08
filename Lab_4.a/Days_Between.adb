with ada.text_IO, ada.integer_text_IO;  use ada.text_IO, ada.integer_text_IO;
with datetime_package2;                  use datetime_package2;


procedure Days_Between is

Date1, Date2 : Date;
Counter : Integer := 0;

begin

    Put("Mata in dagens datum: ");
    get(Date1);
    new_line;
    Put("Mata in ett annat datum: ");
    get(Date2);
    new_line;
    put("Det andra datumet är ");
    
    if Date1 > Date2 then
        while Date1 /= Date2 loop
            Date1 := previous_date(Date1);
            counter := counter + 1;
        end loop;   
        --put antal dar
        Put(Counter, width => 0);
        put(" dagar innan det första.");
    elsif Date1 < Date2 then
        while Date1 /= Date2 loop
            Date2 := previous_date(Date2);
            counter := counter + 1;
        end loop;   
        --put antal dar
        Put(Counter, width => 0);
        put(" dagar efter det första.");
    elsif Date1 = Date2 then
        put("Samma dag");
    end if;
end Days_Between;
