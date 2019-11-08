with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Float_Text_IO;			use Ada.Float_Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;


package body datetime_package is

    procedure Get(MyDate : in out Date) is
      Dash         : Character;
      Month_Length : integer;
    begin
        Get(MyDate.Year);
        Get(Dash);
        Get(MyDate.Month);
        Get(Dash);
        Get(MyDate.Day);

        if MyDate.Year < 0 then
            raise Year_Error;
        end if;
        if MyDate.Month < 1 or MyDate.Month > 12 then
            raise Month_Error;
        end if;

         Month_Length := Get_Month_Length(MyDate.Month);

        if MyDate.Day < 1 or MyDate.Day > Month_Length then
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
        month_length := Get_Month_Length(tempDate.Month);
       
        if month_length = 28 then
            if tempDate.Day < 28 then
                tempDate.Day := tempDate.Day + 1;
            else
                tempDate.Day := 1;
                tempDate.Month := tempDate.Month + 1; 
            end if;
        elsif month_length = 30 then
            if tempDate.Day < 30 then
                tempDate.Day := tempDate.Day + 1;
            else
                tempDate.Day := 1;
                tempDate.Month := tempDate.Month + 1; 
            end if;
        elsif month_length = 31 then
            if tempDate.Day < 31 then
                tempDate.Day := tempDate.Day + 1;
            elsif tempDate.Month = 12 then
                tempDate.Month := 1;
                tempDate.Day := 1;
                tempDate.Year := tempDate.Year + 1; 
            else
                tempDate.Day := 1;
                tempDate.Month := tempDate.Month + 1; 
            end if;
        end if;

        return tempDate;
    end Next_Date;


    function previous_date(MyDate : Date) return Date is
        tempDate : Date := MyDate;
    begin
        if tempDate.month = 1 and tempDate.day = 1 then
            tempDate.year := tempDate.year - 1;
            tempDate.Month := 12;
            tempDate.Day := 31;
        elsif tempDate.Day = 1 then
            tempDate.Month := tempDate.Month - 1;
            tempDate.Day := Get_Month_Length(tempDate.Month);
        else
            tempDate.day := tempDate.day - 1;
        end if;
        
        return tempDate;
    end previous_date;               


    procedure Put(MyDate : in Date) is
    begin
      Put(MyDate.Year, Width => 0);
      Put("-");
      Put_Month(MyDate.Month);
      Put("-");
      Put_Month(MyDate.Day);
    end Put;


    function "="(date1, date2 : Date) return Boolean is
    begin
        if date1.Year /= date2.Year or else date1.Month /= date2.Month or else date1.Day /= date2.Day then
            return false;
        else
            return true;
        end if; 
    end "=";
    

    function "<"(date1, date2 : Date) return boolean is
    begin
        if date1 = date2 then 
            return false;
        elsif date1.year > date2.year then
            return false;
        elsif date1.month > date2.month then
            return false;
        elsif date1.day > date2.day then
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

end datetime_package;










   
