# POKÉKEEPER
# This program will help players of the Pokémon Trading Card Game manage their card collection.
# With this program users can access infomation about all 151 Generation 1 Pokémon and add track whether they own the card in their personal collection.
# When users acquire new cards they can update their collections with the program
require 'sqlite3'

db = SQLite3::Database.new("pokemon.db")
db.results_as_hash = true

#Create a fresh database of Pokémon. This database will have no cards saved as "owned" by the user
def reset_collection(db)
	db.execute("DROP TABLE IF EXISTS pokemon")
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
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Charmeleon', 'Stage 1', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Charizard', 'Stage 2', 'Fire/Flying', 'false')")
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
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoran f', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidorana', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoqueen', 'Stage 2', 'Poison/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Nidoran m', 'Basic', 'Poison', 'false')")
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
	print "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Bellsprout', 'Basic', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Weepinbell', 'Stage 1', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Victreebel', 'Stage 2', 'Grass/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tentacool', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tentacruel', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Geodude', 'Basic', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Graveler', 'Stage 1', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Golem', 'Stage 2', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ponyta', 'Basic', 'Fire', 'false')")
	puts "..."	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Rapidash', 'Stage 1', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Slowpoke', 'Basic', 'Water/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Slowbro', 'Stage 1', 'Water/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magnemite', 'Basic', 'Electric/Steel', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magneton', 'Stage 1', 'Electric/Steel', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Farfetchd', 'Basic', 'Normal/Flying', 'false')")		
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Doduo', 'Basic', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dodrio', 'Stage 1', 'Normal/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Seel', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dewgong', 'Stage 1', 'Water/Ice', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Grimer', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Muk', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Shellder', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Cloyster', 'Stage 1', 'Water/Ice', 'false')")
	print "Accessing Kanto Region..."	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ghastly', 'Basic', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Haunter', 'Stage 1', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Gengar', 'Stage 2', 'Ghost/Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Onix', 'Basic', 'Rock/Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Drowzee', 'Basic', 'Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Hypno', 'Stage 1', 'Psychic', 'false')")
	print "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Krabby', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kingler', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Voltorb', 'Basic', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Electrode', 'Stage 1', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Exeggcute', 'Basic', 'Grass/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Exeggcutor', 'Stage 1', 'Grass/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Cubone', 'Basic', 'Ground', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Marowak', 'Stage 1', 'Ground', 'false')")
	puts "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Hitmonlee', 'Basic', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Hitmonchan', 'Basic', 'Fighting', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Lickitung', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Koffing', 'Basic', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Weezing', 'Stage 1', 'Poison', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Rhyhorn', 'Basic', 'Ground/Rock', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Rhydon', 'Stage 1', 'Ground/Rock', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Chansey', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tangela', 'Basic', 'Grass', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kangaskhan', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Horsea', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Seadra', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Goldeen', 'Basic', 'Water', 'false')")
	print "Loading Pokéballs..."	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Seaking', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Staryu', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Starmie', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Mr Mime', 'Basic', 'Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Scyther', 'Basic', 'Bug/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Jinx', 'Basic', 'Ice/Psychic', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Electabuzz', 'Basic', 'Electric', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magmar', 'Basic', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Pinsir', 'Basic', 'Bug', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Tauros', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Magikarp', 'Basic', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Gyarados', 'Stage 1', 'Water/Flying', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Lapras', 'Basic', 'Water/Ice', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Ditto', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Eevee', 'Basic', 'Normal', 'false')")
	puts "..."
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Vaporeon', 'Stage 1', 'Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Jolteon', 'Stage 1', 'Electric', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Flareon', 'Stage 1', 'Fire', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Porygon', 'Basic', 'Normal', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Omanyte', 'Basic', 'Rock/Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Omastar', 'Stage 1', 'Rock/Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kabuto', 'Basic', 'Rock/Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Kabutops', 'Stage 1', 'Rock/Water', 'false')")
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Aerodactyl', 'Basic', 'Rock/Flying', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Snorlax', 'Basic', 'Electric', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Articuno', 'Basic', 'Ice/Flying', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Zapdos', 'Basic', 'Electric/Flying', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Moltres', 'Basic', 'Fire/Flying', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dratini', 'Basic', 'Dragon', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dragonair', 'Stage 1', 'Dragon', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Dragonite', 'Stage 2', 'Dragon/Flying', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Mewtwo', 'Basic', 'Psychic', 'false')")	
	db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Mew', 'Basic', 'Psychic', 'false')")		
end

def print_detailed_list(list)
	puts "========================="
	list.each do |pokemon|
	 puts "Pokedex: ##{pokemon['id']} #{pokemon['name']} - #{pokemon['stage']} - #{pokemon['type']} type"
	end
end

def print_quick_list(list)
	puts "========================="
	list.each do |pokemon|
		puts "#{pokemon['name']} ##{pokemon['id']}"
	end
end

def add_to_collection(db, pokemon)
	db.execute("UPDATE pokemon SET owned='true' WHERE name='#{pokemon}'")
	update_lists(db)
end

def update_lists(db)
	# USER MODIFIED LISTS
	$owned = db.execute("SELECT * FROM pokemon WHERE owned='true'")
	$unowned = db.execute("SELECT * FROM pokemon WHERE owned='false'")
		#owned by type
	$owned_bug = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%bug%'")
	$owned_dragon = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%dragon%'")
	$owned_ice = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%ice%'")
	$owned_fighting = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fighting%'")
	$owned_fire = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fire%'")
	$owned_flying = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%flying%'")
	$owned_grass = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%grass%'")
	$owned_ghost = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%ghost%'")
	$owned_electric = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%electric%'")
	$owned_normal = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%normal%'")
	$owned_poison = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%poison%'")
	$owned_psychic = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%psychic%'")
	$owned_rock = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%rock%'")
	$owned_water = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%water%'")
	$owned_fairy = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%fairy%'")
	$owned_dark = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%dark%'")
	$owned_steel = db.execute("SELECT * FROM pokemon WHERE owned='true' AND type LIKE '%steel%'")
		#owned by stage
	$owned_basic = db.execute("SELECT * FROM pokemon WHERE owned='true' AND stage='Basic'")
	$owned_stage1 = db.execute("SELECT * FROM pokemon WHERE owned='true' AND stage='Stage 1'")
	$owned_stage2 = db.execute("SELECT * FROM pokemon WHERE owned='true' AND stage='Stage 2'")
end

# BASE LISTS
#big lists
name_array = ["Bulbasaur","Ivysaur","Venusaur","Charmander","Charmeleon","Charizard","Squirtle","Wartortle","Blastoise","Caterpie",
	"Metapod","Butterfree","Weedle","Kakuna","Beedrill","Pidgey","Pidgeotto","Pidgeot","Rattata","Raticate","Spearow","Fearow","Ekans",
	"Arbok","Pikachu","Raichu","Sandshrew","Sandslash","Nidoran f","Nidorina","Nidoqueen","Nidoran m","Nidorino","Nidoking","Clefairy","Clefable",
	"Vulpix","Ninetales","Jigglypuff","Wigglytuff","Zubat","Golbat","Oddish","Gloom","Vileplume","Paras","Parasect","Venonat","Venomoth","Diglett",
	"Dugtrio","Meowth","Persian","Psyduck","Golduck","Mankey","Primeape","Growlithe","Arcanine","Poliwag","Poliwhirl","Poliwrath","Abra","Kadabra",
	"Alakazam","Machop","Machoke","Machamp","Bellsprout","Weepinbell","Victreebel","Tentacool","Tentacruel","Geodude","Graveler","Golem","Ponyta",
	"Rapidash","Slowpoke","Slowbro","Magnemite","Magneton","Farfetch'd","Doduo","Dodrio","Seel","Dewgong","Grimer","Muk","Shellder","Cloyster","Gastly",
	"Haunter","Gengar","Onix","Drowzee","Hypno","Krabby","Kingler","Voltorb","Electrode","Exeggcute","Exeggutor","Cubone","Marowak","Hitmonlee","Hitmonchan",
	"Lickitung","Koffing","Weezing","Rhyhorn","Rhydon","Chansey","Tangela","Kangaskhan","Horsea","Seadra","Goldeen","Seaking","Staryu","Starmie","Mr. Mime",
	"Scyther","Jynx","Electabuzz","Magmar","Pinsir","Tauros","Magikarp","Gyarados","Lapras","Ditto","Eevee","Vaporeon","Jolteon","Flareon","Porygon","Omanyte",
	"Omastar","Kabuto","Kabutops","Aerodactyl","Snorlax","Articuno","Zapdos","Moltres","Dratini","Dragonair","Dragonite","Mewtwo","Mew"]

$all_pokemon = db.execute("SELECT * FROM pokemon")
#by stage
$basic = db.execute("SELECT * FROM pokemon WHERE stage='Basic'")
$stage1 = db.execute("SELECT * FROM pokemon WHERE stage='Stage 1'")
$stage2 = db.execute("SELECT * FROM pokemon WHERE stage='Stage 2'")
#by type
$bug = db.execute("SELECT * FROM pokemon WHERE type LIKE '%bug%'")
$dragon = db.execute("SELECT * FROM pokemon WHERE type LIKE '%dragon%'")
$ice = db.execute("SELECT * FROM pokemon WHERE type LIKE '%ice%'")
$fighting = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fighting%'")
$fire = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fire%'")
$flying = db.execute("SELECT * FROM pokemon WHERE type LIKE '%flying%'")
$grass = db.execute("SELECT * FROM pokemon WHERE type LIKE '%grass%'")
$ghost = db.execute("SELECT * FROM pokemon WHERE type LIKE '%ghost%'")
$electric = db.execute("SELECT * FROM pokemon WHERE type LIKE '%electric%'")
$normal = db.execute("SELECT * FROM pokemon WHERE type LIKE '%normal%'")
$poison = db.execute("SELECT * FROM pokemon WHERE type LIKE '%poison%'")
$psychic = db.execute("SELECT * FROM pokemon WHERE type LIKE '%psychic%'")
$rock = db.execute("SELECT * FROM pokemon WHERE type LIKE '%rock%'")
$water = db.execute("SELECT * FROM pokemon WHERE type LIKE '%water%'")
$fairy = db.execute("SELECT * FROM pokemon WHERE type LIKE '%fairy%'")
$steel = db.execute("SELECT * FROM pokemon WHERE type LIKE '%steel%'")


##################################################
#UI - When opened user decides to continue with saved collection or start a new one
puts "Welcome to POKÉKEEPER. I will help you organize your Pokémon card collection."
puts "Type N to start a (N)ew collection or C to (C)ontinue with your saved collection."
answer = gets.chomp.upcase
if answer == "N"
	puts "This will overwrite any saved collections. Are you sure? (Y/N)"
	confirm = gets.chomp.downcase
		if confirm == "y"
			reset_collection(db)
		else
			puts "OK, we'll continue with your current collection"
		end
else	
	puts "OK, we'll continue with your current collection"
end

update_lists(db) #creates users owned lists

#UI - meat of the UI - user can add cards to their collection and view categorized lists
loop do
	puts "Commands: (A)dd to your collection, (V)iew your collection, (Q)uit"
	command = gets.chomp.upcase
	 if command == 'A'
	 	puts "#####################################################################################################"
	 	loop do
	 		puts "Type a Pokémon name to add to your collection. Type D when done adding Pokémon"
	 		add = gets.chomp.downcase.capitalize
	 			add_to_collection(db, add)
	 			if name_array.include?(add)
	 				puts "Added #{add} to your collection."
	 			elsif add == "D"
	 			else 
	 				puts "Sorry, #{add} is not a valid Generation 1 Pokémon."
	 				puts "(For Farfetchd and Mr Mime don't use punctuation. For Nidoran you must specify male or female: 'Nidoran (f)'"
	 			end
	 		break if add == 'D'
	 	end
	 elsif command == 'V'
	 	puts "#####################################################################################################"
	 	puts "To view Pokémon in your collection by type enter a type name. Just enter the FIRST 3 letters:"
	 	puts "(Bug, Dragon, Ice, Fighting, Flying, Grass, Ghost, Electric, Normal, Poison, Psychic, Rock, Water, Fairy, Steel)"
	 	puts "Enter 0, 1, or 2 to view your collection by stage (Basic, Stage 1, Stage 2)"
	 	puts "Enter 'mine' to view your entire collection. Enter 'not mine' to see all Pokémon you don't have. Enter 'all' for all Pokémon"
	 	puts "To view Pokémon by type including those you don't own type 'all' in front of the damage type: 'all dra'" 
	 	puts "D when done."
	 	puts "#####################################################################################################"
	 	loop do	
	 		view = gets.chomp.downcase.capitalize
	 		break if view == "D"
	 		case view
	 		when "Bug"
	 			print_detailed_list($owned_bug)
	 		when "Dra"
	 			print_detailed_list($owned_dragon)
	 		when "Ice"
	 			print_detailed_list($owned_ice)
	 		when "Fig"
	 			print_detailed_list($owned_fighting)
	 		when "Fly"
	 			print_detailed_list($owned_flying)
	 		when "Gra"
	 			print_detailed_list($owned_grass)
	 		when "Gho"
	 			print_detailed_list($owned_ghost)
	 		when "Ele"
	 			print_detailed_list($owned_electric)
	 		when "Nor"
	 			print_detailed_list($owned_normal)
	 		when "Poi"
	 			print_detailed_list($owned_poison)
	 		when "Psy"
	 			print_detailed_list($owned_psychic)
	 		when "Roc"
	 			print_detailed_list($owned_rock)
	 		when "Wat"
	 			print_detailed_list($owned_water)
	 		when "Fai"
	 			print_detailed_list($owned_fairy)
	 		when "Ste"
	 			print_detailed_list($owned_steel)	 
	 		when "0"
	 			print_detailed_list($owned_basic)					 				 				 				 				 				 				 				 				 				 			
	 		when "1"
	 			print_detailed_list($owned_stage1)	
	 		when "2"
	 			print_detailed_list($owned_stage2)	
	 		when "Mine"
	 			print_detailed_list($owned)
	 		when "Not mine"
	 			print_detailed_list($unowned)		
	 		when "All bug"
	 			print_quick_list($bug)
	 		when "All dra"
	 			print_quick_list($dragon)
	 		when "All ice"
	 			print_quick_list($ice)
	 		when "All fig"
	 			print_quick_list($fighting)
	 		when "All fly"
	 			print_quick_list($flying)
	 		when "All gra"
	 			print_quick_list($grass)
	 		when "All gho"
	 			print_quick_list($ghost)
	 		when "All ele"
	 			print_quick_list($electric)
	 		when "All nor"
	 			print_quick_list($normal)
	 		when "All poi"
	 			print_quick_list($poison)
	 		when "All psy"
	 			print_quick_list($psychic)
	 		when "All roc"
	 			print_quick_list($rock)
	 		when "All wat"
	 			print_quick_list($water)
	 		when "All fai"
	 			print_quick_list($fairy)
	 		when "All ste"
	 			print_quick_list($steel)	
	 		when "All"
	 			print_detailed_list($all_pokemon)	
	 		else
	 			puts "#{view} is not a valid command. Remember you only need the first 3 letters of a damage type"
	 		end	
	 	end
	 elsif command == 'Q'
	 	puts "Thank you for using POKÉKEEPER"
	 else
	 	puts "Please enter A or V."
	end
 	break if command == 'Q'
end

################################################## TEST CODE

# p $all_pokemon
# print_quick_list($owned)

#Allow users to add pokemon to collection by changing owned to "TRUE"

#Allow users to view owned and unowned Pokémon cards.