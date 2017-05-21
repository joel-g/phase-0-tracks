# POKÉKEEPER
# This program will help players of the Pokémon Trading Card Game manage their card collection.
# With this program users can access infomation about all 151 Generation 1 Pokémon and add track whether they own the card in their personal collection.
# When users acquire new cards they can update their collections with the program
require 'sqlite3'

db = SQLite3::Database.new("pokemon.db")
db.results_as_hash = true

#Create a fresh database of Pokémon. This database will have no cards saved as "owned" by the user
def reset_collection(db)
	db.execute("DROP TABLE pokemon")
	# db.execute("DROP TABLE stages")
	print "Generating Pokédex..."
	
	create_pokemon_table = <<-SQL  
	  CREATE TABLE IF NOT EXISTS pokemon(
	    id INTEGER PRIMARY KEY,
	    name VARCHAR(255),
	    stage VARCHAR(255),
	    type VARCHAR(255),
	    owned BOOLEAN
	  )
	SQL
	db.execute(create_pokemon_table) # Creates an empty table
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Bulbasaur', 'Basic', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ivysaur', 'Stage 1', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Venusaur', 'Stage 2', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Charmander', 'Basic', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Charmeleon', 'Stage 1', 'Fire', 'true')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Charizard', 'Stage 2', 'Fire/Flying', 'true')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Squirtle', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Wartortle', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Blastoise', 'Stage 2', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Caterpie', 'Basic', 'Bug', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Metapod', 'Stage 1', 'Bug', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Butterfree', 'Stage 2', 'Bug/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Weedle', 'Basic', 'Bug/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kakuna', 'Stage 1', 'Bug/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Beedrill', 'Stage 2', 'Bug/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Pidgey', 'Basic', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Pidgeotto', 'Stage 1', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Pidgeot', 'Stage 2', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Rattata', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Raticate', 'Stage 1', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Spearow', 'Basic', 'Normal/Flying', 'false')")
	puts "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Fearow', 'Stage 1', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ekans', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Arbok', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Pikachu', 'Basic', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Raichu', 'Stage 1', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Sandshrew', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Sandslash', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoran ♀', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidorana', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoqueen', 'Stage 2', 'Poison/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoran ♂', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidorino', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoking', 'Stage 2', 'Poison/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Clefairy', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Clefable', 'Stage 1', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Vulpix', 'Basic', 'Fire', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ninetales', 'Stage 1', 'Fire', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Jigglypuff', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Wigglytuff', 'Stage 1', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Zubat', 'Basic', 'Poison/Flying', 'false')")		
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Golbat', 'Basic', 'Poison/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Oddish', 'Basic', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Gloom', 'Stage 1', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Vileplume', 'Stage 2', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Paras', 'Basic', 'Bug/Grass', 'false')")
	print "Reaching Professor Oakes..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Parasect', 'Stage 1', 'Bug/Grass', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Venonat', 'Basic', 'Bug/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Venomoth', 'Stage 1', 'Bug/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Diglet', 'Basic', 'Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dugtrio', 'Stage 1', 'Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Meowth', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Persian', 'Stage 1', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Psyduck', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Golduck', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Mankey', 'Basic', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Primeape', 'Stage 1', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Growlithe', 'Basic', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Arcanine', 'Stage 1', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Poliwag', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Poliwhirl', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Poliwrath', 'Stage 2', 'Water/Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Abra', 'Basic', 'Psychic', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kadabra', 'Stage 1', 'Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Alakazam', 'Stage 2', 'Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Machop', 'Basic', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Machoke', 'Stage 1', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Machamp', 'Stage 2', 'Fighting', 'false')")
	puts "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Bellsprout', 'Basic', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Weepinbell', 'Stage 1', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Victreebel', 'Stage 2', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tentacool', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tentacruel', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Geodude', 'Basic', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Graveler', 'Stage 1', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Golem', 'Stage 2', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ponyta', 'Basic', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Rapidash', 'Stage 1', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Slowpoke', 'Basic', 'Water/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Slowbro', 'Stage 1', 'Water/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magnemite', 'Basic', 'Electric/Steel', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magneton', 'Stage 1', 'Electric/Steel', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Farfetch`d', 'Basic', 'Normal/Flying', 'false')")		
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Doduo', 'Basic', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dodrio', 'Stage 1', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Seel', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dewgong', 'Stage 1', 'Water/Ice', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Grimer', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Muk', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Shellder', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Cloyster', 'Stage 1', 'Water/Ice', 'false')")
	puts "Accessing Kanto Region..."	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ghastly', 'Basic', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Haunter', 'Stage 1', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Gengar', 'Stage 2', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Onix', 'Basic', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Grimer', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Hypno', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Krabby', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kingler', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Voltorb', 'Basic', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Electrode', 'Stage 1', 'Electric', 'false')")



	#If I decide it makes sense to keep stages in a separate table
	# create_stages_table = <<-SQL  
	#   CREATE TABLE IF NOT EXISTS stages(
	#     id INT,
	#     stage VARCHAR(255)
	#   )
	# SQL
	# db.execute(create_stages_table) # Creates an empty table to store the Pokemon stages
	# db.execute("INSERT INTO stages (id, stage) VALUES (0, 'Basic')")
	# db.execute("INSERT INTO stages (id, stage) VALUES (1, 'Stage 1')")
	# db.execute("INSERT INTO stages (id, stage) VALUES (2, 'Stage 2')")
end

def print_detailed_list(list)
	list.each do |pokemon|
	 puts "Pokedex: ##{pokemon['id']} #{pokemon['name']} is a #{pokemon['stage']} #{pokemon['type']} type Pokémon"
	end
end

#LISTS
all_pokemon = db.execute("SELECT * FROM pokemon")
owned = db.execute("SELECT * FROM pokemon WHERE owned='true'")
unowned = db.execute("SELECT * FROM pokemon WHERE owned='false'")
	#by stage
basic = db.execute("SELECT * FROM pokemon WHERE stage='Basic'")
stage1 = db.execute("SELECT * FROM pokemon WHERE stage='Stage 1'")
stage2 = db.execute("SELECT * FROM pokemon WHERE stage='Stage 2'")
	#by type
bug = db.execute("SELECT * FROM pokemon WHERE type LIKE '%bug%'")
dragon = db.execute("SELECT * FROM pokemon WHERE type LIKE '%dragon%'")
ice = db.execute("SELECT * FROM pokemon WHERE type LIKE '%ice%'")
fighting = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fighting%'")
fire = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fire%'")
flying = db.execute("SELECT * FROM pokemon WHERE type LIKE '%flying%'")
grass = db.execute("SELECT * FROM pokemon WHERE type LIKE '%grass%'")
ghost = db.execute("SELECT * FROM pokemon WHERE type LIKE '%ghost%'")
electric = db.execute("SELECT * FROM pokemon WHERE type LIKE '%electric%'")
normal = db.execute("SELECT * FROM pokemon WHERE type LIKE '%normal%'")
poison = db.execute("SELECT * FROM pokemon WHERE type LIKE '%poison%'")
psychic = db.execute("SELECT * FROM pokemon WHERE type LIKE '%psychic%'")
rock = db.execute("SELECT * FROM pokemon WHERE type LIKE '%rock%'")
water = db.execute("SELECT * FROM pokemon WHERE type LIKE '%water%'")
fairy = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fairy%'")
dark = db.execute("SELECT * FROM pokemon WHERE type LIKE '%dark%'")
steel = db.execute("SELECT * FROM pokemon WHERE type LIKE '%steel%'")
	#owned by type
owned_bug = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%bug%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")

#DRIVER CODE

puts "Welcome to POKÉKEEPER. I will help you organize your Pokémon card collection."
puts "What is your name?"  # Possible future feature: allow multiple users to save their own collection data
user = gets.chomp.downcase
puts "Type NEW to start a new collection or OPEN to continue with your saved collection. (A new collection will overwrite your old one)"
answer = gets.chomp.upcase
if answer == "NEW"
	puts "This will overwrite any saved collections. Are you sure? (y/n)"
	confirm = gets.chomp.downcase
	if confirm == "y"
		reset_collection(db)
	elsif confirm == "n"
		puts "OK, we'll continue with your current collection"
	end
elsif answer == "OPEN"
else	
	puts "Please type NEW or OPEN"
end


print_detailed_list(owned_fire)




#Allow users to add pokemon to collection by changing owned to "TRUE"

#Allow users to view owned and unowned Pokémon cards.




# TEST CODE


# print_pokedex(db)
