package datetime_package is

    type date is private;
    
    Day_Error : exception;
    Month_Error : exception;
    Year_Error : exception;

    procedure Get(Mydate : in out Date);
    procedure Put_Month(Month : in Integer);
    function Get_Month_Length(input : Integer) return Integer;
    function Next_Date(MyDate : Date) return Date;
    function previous_date(MyDate : Date) return Date;
    procedure Put(MyDate : in Date);
    function "="(date1, date2 : Date) return Boolean;
    function "<"(date1, date2 : Date) return Boolean;
    function ">"(date1, date2 : Date) return Boolean;
private
    
   type Date is
    record
	 Year : Integer;
	 Month : Integer;
	 Day : Integer;
    end record;  

end datetime_package;  
