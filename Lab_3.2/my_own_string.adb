with ada.text_IO, ada.integer_text_IO;  use ada.text_IO, ada.integer_text_IO;

procedure my_own_string is
    
    type char_array is array (1..256) of character;
    type string_type is 
        record
            char:char_array;
            length:integer;
        end record;

    procedure get_char (the_characters:out string_type) is
        begin
            for I in char_array'range loop            
                get(the_characters.char(I));
                the_characters.length:=I;
                exit when end_of_line;
            end loop;
        end get_char;

    procedure put_char (the_words:in string_type) is
        begin
            for J in 1..the_words.length loop
                put(the_words.char(J));
            end loop;
        end put_char;

    function "=" (left, right:in string_type) return boolean is
         same:boolean;
        begin      
            for L in 1..left.length loop
                if left.length = right.length and left.char(L) = right.char(L) then
                    same:=true;
                else
                    same:=false;
                end if;
           end loop;
          return same;
        end;

my_string:string_type;
his_string:string_type;
Same:boolean;
begin
    get_char(my_string);
    get_char(his_string);

    put_char(my_string);
    new_line(1);
    put_char(his_string);
    
    new_line(1);
    Same:= my_string=his_string;

    if Same then
        put("Det är samma");
    else
        put("Det är inte samma");
    end if;
end my_own_string;









