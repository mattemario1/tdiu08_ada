with ada.text_IO, ada.integer_text_IO;
use ada.text_IO, ada.integer_text_IO;

procedure square is



procedure plusrad (N:in integer; ch1,ch2:in character) is

begin

put(ch1);

for I in 1..N*2 loop

    put(ch2);    

        end loop;

put(ch1);

new_line(1);

        end plusrad;





N:integer;

begin

get(N);

plusrad(N,'+','-');

for J in 1..(N) loop

plusrad(N,'|',' ');

            end loop;

plusrad(N,'+','-');

            end square;








