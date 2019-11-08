with Ada.Text_Io, Ada.Integer_Text_Io, Ada.Float_Text_io;
use Ada.Text_Io, Ada.Integer_Text_Io, Ada.Float_Text_Io;

procedure test is
   
   A:Integer;
   B:Float;
   C:character;
   D:String(1..5);
   
 
begin
   
   --heltal
   
   Put("skriv in ett heltal:");
   
   Get(B);
    B:=B-0.5;
     Put("du skrev in talet:");
     
    A:= Integer(B);
     Put(A, Width=>1);
     
     New_Line(2);

    Skip_line;
     
     --5 heltal
     
     Put("Skriv in fem heltal:");
         
     Get(A);
     
    
         Put("Du skrev in talen:");

      
         Put(A, Width=>1);
        Put(" ");
         Get(A);
         Put(A, Width=>1);
        Put(" ");
         Get(A);
         Put(A, Width=>1);
        Put(" ");
         Get(A);
         Put(A, Width=>1);
        Put(" ");
         Get(A);
         Put(A, Width=>1);
     
     
         New_Line(2);
         
         
         Skip_line;
     
     --Flyttal
     
     Put("Skriv in ett flyttal:");
     
     Get(B);
     
     Put("Du skrev in flyttalet:");
       
     Put(B, Fore=>1, Aft=>3, Exp=>0);
     
     New_Line(2);
     
    Skip_line;

     --flyttal och heltal
     
     Put("skriv in ett heltal och ett flyttal:");
     

     Get(A);
     
     Get(B);
     
     New_Line(2);
     
     Put("Du skrev in heltalet:");
    
     Put(A, Width=>9);
     
     New_Line(1);
       
       
     Put("Du skrev in flyttalet:");
     Put(B, Fore=>3, Aft=>4, Exp=>0);
       
       
     New_Line(2);

    Skip_line;
    
    
    
     --tecken
    
     Put("skriv in ett tecken:");
       
     Get(C);
    
     Put("Du skrev in tecknet:");
    
     Put(C);
    
     New_Line(2);
    
    Skip_line;
    
     --sträng fem tecken
    
     Put("Skriv in en sträng med fem tecken:");
    
     Get(D);
    
     Put("Du skrev in strängen:");
       
       Put(D);

    New_line(2);

    Skip_line;

    --sträng 3 tecken

    Put("Skriv in en sträng med tre tecken:");

    get(D(1..3));

    Put("Du skrev in strängen:");

    Put(D(1..3));

    New_line(2);

    Skip_line;

    --Heltal och sträng 5 tecken

    Put("Skriv in ett heltal och en sträng med fem tecken:");

    Get(A);
    Get(D(1..1));
    Get(D);
    
    Put("Du skrev in talet |");
    Put(A, Width=>1);
    Put("| och strängen |");
    Put(D);
    Put("|.");

    New_line(2);

    Skip_line;
    
    --Sträng 3 tecken och flyttal

    Put("Skriv in en sträng med 3 tecken och ett flyttal:");

    Get(D(1..3));
    Get(B);

    Put("Du skrev in ");
    C:=('"');
    Put(C);
    Put(B, Fore=>1, Aft=>3, Exp=>0);
    Put(C);
    Put(" och ");
    Put(C);
    Put(D(1..3));
    Put(C);
    


       
     end test;



