with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;
with datetime_package;          use datetime_package;

procedure Main is      
    MyDate  : Date;
    MyDate2 : Date;
    lika    : Boolean;
begin
    -- Test calls


    loop
        begin
            Put("Ange ett datum: ");
            Get(MyDate);
            exit;
        exception
            when Day_Error =>
                put_line("Day_Error");
            when Month_Error =>
                put_line("Month_Error");
            when Year_Error =>
                put_line("Year_Error");
        end;
    end loop;
    Put("Ange ett datum 2: ");
    Get(MyDate2);

    Put("Ett datum: ");
    Put(MyDate);
    New_Line;
    Put(Next_Date(MyDate));
    new_line;
    put(previous_Date(MyDate));
    new_line;
    lika := MyDate = MyDate2;
    Put(lika'Image);
    new_line;
    lika := mydate < mydate2;
    put(lika'Image);
    new_line;
    lika := mydate > mydate2;
    put(lika'Image);
end Main;
