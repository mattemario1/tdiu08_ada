with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

with Ada.Numerics.Discrete_Random;

procedure Rolldie is
   
   subtype One_To_Six is
     Integer range 1..6;
   
   package My_Random_Package is
      new Ada.Numerics.Discrete_Random(One_To_Six);
  
   use My_Random_Package;

    procedure draw_dice (D:in integer) is
    begin
        new_line(1);        
        Put("+-----+");
        new_line(1);
        if D=1 then
            put_line("|     |");
            put_line("|  *  |");
        elsif D=2 then
            put_line("| *   |");
            put_line("|   * |");
        elsif D=3 then
            put_line("|*   *|");
            put_line("|  *  |");
        elsif D=4 then
            put_line("| * * |");
            put_line("| * * |");
        elsif D=5 then
            put_line("|* * *|");
            put_line("| * * |");
        else
            put_line("|* * *|");
            put_line("|* * *|");
        end if;
        put("+-----+");
    end draw_dice;

    function sum_dice (D, sum:integer) return integer is
    begin
        return(sum+D);
    end sum_dice;
   G    : Generator;
   N, D : Integer;
   sum  : integer:=0;
begin
   Reset(G); -- Detta sätter slumptalsfröet som används för att
	     -- ta fram de slumpade talen, skall göras EN gång 
	     -- per programkörning (varken mer eller mindre).
   
   Put("Mata in antal slag: ");
    get(N);
   for I in 1..N loop
        D := Random(G);
        draw_dice(D);
        sum:=sum_dice(D, sum);
   end loop;
    new_line(2);
    put("Summan blev:");
    put(sum, width=>1);
end Rolldie;








