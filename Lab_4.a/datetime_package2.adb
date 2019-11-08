with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;


package body datetime_package2 is

    procedure Get(MyDate : in out Date) is
      Dash         : Character;
      Month_Length : integer;
    begin
        Get(MyDate(1));
        Get(Dash);
        Get(MyDate(2));
        Get(Dash);
        Get(MyDate(3));

        if MyDate(1) < 0 then
            raise Year_Error;
        end if;
        if MyDate(2) < 1 or MyDate(2) > 12 then
            raise Month_Error;
        end if;

         Month_Length := Get_Month_Length(MyDate(2));

        if MyDate(3) < 1 or MyDate(3) > Month_Length then
            raise Day_Error;
        end if;      
    end Get;


    procedure Put_Month(Month : in Integer) is
    begin
      if Month'Image'Length - 1 < 2 then
     Put("0");
      end if;
      Put(Month, Width => 0);
    end Put_Month;


    function Get_Month_Length(input : Integer) return Integer is
    begin
      case input is
          when 4 | 6 | 9 | 11 =>
            return 30;
          when 2 =>
            return 28;
          when 1 | 3 | 5 | 7 | 8 | 10 | 12 =>
            return 31;
          when others =>
            return 0;
        end case;
    end Get_month_Length;


    function Next_Date(MyDate : Date) return Date is
        month_length : integer;
        tempDate     : Date := MyDate;
    begin
        month_length := Get_Month_Length(tempDate(2));
       
        if month_length = 28 then
            if tempDate(3) < 28 then
                tempDate(3) := tempDate(3) + 1;
            else
                tempDate(3) := 1;
                tempDate(2) := tempDate(2) + 1; 
            end if;
        elsif month_length = 30 then
            if tempDate(3) < 30 then
                tempDate(3) := tempDate(3) + 1;
            else
                tempDate(3) := 1;
                tempDate(2) := tempDate(2) + 1; 
            end if;
        elsif month_length = 31 then
            if tempDate(3) < 31 then
                tempDate(3) := tempDate(3) + 1;
            elsif tempDate(2) = 12 then
                tempDate(2) := 1;
                tempDate(3) := 1;
                tempDate(1) := tempDate(1) + 1; 
            else
                tempDate(3) := 1;
                tempDate(2) := tempDate(2) + 1; 
            end if;
        end if;

        return tempDate;
    end Next_Date;


    function previous_date(MyDate : Date) return Date is
        tempDate : Date := MyDate;
    begin
        if tempDate(2) = 1 and tempDate(3) = 1 then
            tempDate(1) := tempDate(1) - 1;
            tempDate(2) := 12;
            tempDate(3) := 31;
        elsif tempDate(3) = 1 then
            tempDate(2) := tempDate(2) - 1;
            tempDate(3) := Get_Month_Length(tempDate(2));
        else
            tempDate(3) := tempDate(3) - 1;
        end if;
        
        return tempDate;
    end previous_date;               


    procedure Put(MyDate : in Date) is
    begin
      Put(MyDate(1), Width => 0);
      Put("-");
      Put_Month(MyDate(2));
      Put("-");
      Put_Month(MyDate(3));
    end Put;


    function "="(date1, date2 : Date) return Boolean is
    begin
        if date1(1) /= date2(1) or else date1(2) /= date2(2) or else date1(3) /= date2(3) then
            return false;
        else
            return true;
        end if; 
    end "=";
    

    function "<"(date1, date2 : Date) return boolean is
    begin
        if date1 = date2 then 
            return false;
        elsif date1(1) > date2(1) then
            return false;
        elsif date1(2) > date2(2) then
            return false;
        elsif date1(3) > date2(3) then
            return false;
        else
            return true;
        end if;

        
    end "<";

    function ">"(date1, date2 : Date) return boolean is
        bla : Boolean;
    begin
        bla := date1 < date2;
        if date1 = date2 then 
            return false;
        end if;
        
        return not bla;
    end ">";

end datetime_package2;










   
