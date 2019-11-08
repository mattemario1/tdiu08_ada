with Ada.Text_Io, Ada.Integer_Text_Io, Ada.Float_Text_io;
Use Ada.Text_Io, Ada.Integer_Text_Io, Ada.Float_Text_io;
Procedure momstabell is

Ejmoms:Float;
Sistapris:Float;
Steg:Float;
Moms:Float;
Begin

Put("Första pris:");
Get(Ejmoms);
Put("Sista pris:");
Get(Sistapris);
Put("Steg:");
Get(Steg);
Put("Momsprocent:");
Get(Moms); 
New_line(2);
Put("===Momstabell===");
New_line(1);
Put("Pris utan moms Moms Pris med moms");
New_line(1);
Put(Ejmoms, Fore=>9, Aft=>2, Exp=>0);
Moms:=Moms/100.00;
Put(Moms, Fore=>10, Aft=>2, Exp=>0);
Put(Ejmoms+Moms, Fore=>10, Aft=>2, Exp=>0);







End;
