with ada.text_IO, ada.integer_text_IO, ada.float_text_IO; use ada.text_IO, ada.integer_text_IO, ada.float_text_IO;



procedure heroes_database is
    
    type char_array is array (1..256) of character;
    type string_type is 
        record
            char:char_array;
            length:integer;
        end record;


    type available_species_type is (Human, Elf, Orc, Halfling, Ogre, Lizardman);
    type available_eye_colors_type is (Blue, Green, Brown, Gray, Yellow, Red, Black, Crazy);

    --type available_species_type is array (1..6) of string (1..20);
    --type available_eye_colors_type is array (1..8) of string (1..20);

    type hero_character_sheet_type is
        record
            name        :string_type;
            age         :integer;
            sex         :string_type;
            whight      :float;
            hair_color  :string_type;
            species     :available_species_type;
            eye_color   :available_eye_colors_type;
        end record;

    --type all_heroes is array (1..100) of hero_character_sheet_type;









    procedure get (hero:out hero_character_sheet_type) is 


        procedure get_char (the_characters:out string_type) is
            begin
                for I in char_array'range loop            
                    get(the_characters.char(I));
                    
                    the_characters.length:=I;

                    exit when end_of_line;
                end loop;

            end get_char;

        --species_type'pos(Human)
        --species_type'val(1);
        --species : species_type;
        --species := Human;
        --Put(species'image)

            --procedure species (heros_species:out integer) is

                --N:heros_species;
                --begin
                    --put_line("Select your species")
                    --put_line("1. Human");
                    --put_line("2. Elf");
                    --put_line("3. Orc");
                    --put_line("4. Halfling");
                    --put_line("5. Ogre");
                    --put_line("6. Lizardman");
                    
                    --get(N);
                    
                --end species;


        begin
            put("Name:");
            get_char(hero.name);
            put("Age:");
            get(hero.age);
            put("Sex:");
            get_char(hero.sex);
            put("Whight:");
            get(hero.whight);
            put("Hair color:");
            get_char(hero.hair_color);
            put_line("Species:");
            --species(species_number);
            --put_line("Eye color:");
            --get(hero.eye_color);

        end get;


    procedure put (hero:in hero_character_sheet_type) is

        procedure put_char (the_words:in string_type) is
            begin
                for J in 1..the_words.length loop
                    put(the_words.char(J));
                end loop;
            end put_char;

        begin
            put("Name:");
            put_char(hero.name);
            new_line(1);
            put("Age:");
            put(hero.age, width=>1);
            new_line(1);
            put("Sex:");
            put_char(hero.sex);
            new_line(1);
            put("Whight:");
            put(hero.whight, 1, 2, 0);
            new_line(1);
            put("Hair color:");
            put_char(hero.hair_color);
            new_line(1);
            put("Species:");
            put(hero.species'image);
            new_line(1);
            put("Eye color:");
            put(hero.eye_color'image);
        end put;


Max_power:hero_character_sheet_type;
begin

get(Max_power);
Max_power.species:=Orc;
Max_power.eye_color:=Blue;
put(Max_power);

end heroes_database;

















