with ada.integer_text_IO, ada.text_IO; use ada.text_IO;




procedure ten_integers_array is
    type ten_ints_array_type is array (1..10) of integer;
    package IO renames ada.integer_text_IO;


    procedure get (numbers:out ten_ints_array_type) is
        begin
            for I in ten_ints_array_type'range loop            
                IO.get(numbers(I));
            end loop;
    end get;


    procedure put (numbers:in ten_ints_array_type) is
        begin
            for I in ten_ints_array_type'range loop
                IO.put(numbers(I),width=>1);
                new_line(1);
            end loop;
        end put;


    procedure find_maximum (numbers:in ten_ints_array_type; max, index:out integer) is
        begin 
            max:=0;
            for I in ten_ints_array_type'range loop
                if max<=numbers(I) then
                    max:=numbers(I);
                    index:=I;
                end if;
            end loop;
        end find_maximum;


    procedure reverse_array (numbers:in ten_ints_array_type) is
        begin
            for I in reverse ten_ints_array_type'range loop
                IO.put(numbers(I), width=>1);
                new_line(1);
            end loop;
        end reverse_array;

 max, index:integer;
 numbers:ten_ints_array_type;

begin
    new_line(1);    
    get(numbers);
    put(numbers);

    find_maximum(numbers,max,index);
    new_line(1);
    IO.put(max, width=>1);
    new_line(1);
    IO.put(index, width=>1);
    
    new_line(2);
    reverse_array(numbers);

    

end ten_integers_array;











