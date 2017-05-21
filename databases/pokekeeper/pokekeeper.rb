# POKÉKEEPER
# This program will help players of the Pokémon Trading Card Game manage their card collection.
# With this program users can access infomation about all 151 Generation 1 Pokémon and add track whether they own the card in their personal collection.
# When users acquire new cards they can update their collections with the program

require 'sqlite3'

puts "Welcome to POKÉKEEPER. I will help you organize your Pokémon card collection."
# puts "What is your name?"  # Possible future feature: allow multiple users to save their own collection data
# user = gets.chomp.downcase


#Create a fresh database of Pokémon. This database will have no cards saved as "owned" by the user
db = SQLite3::Database.new("pokemon.db")
db.results_as_hash = true

create_empty_table = <<-SQL  
  CREATE TABLE IF NOT EXISTS pokemon(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    stage VARCHAR(255),
    type VARCHAR(255),
    owned BOOLEAN
  )
SQL

db.execute(create_empty_table) # Creates an empty table
db.execute("INSERT INTO pokemon (name, stage, type, owned) VALUES ('Bulbasaur', 'Basic', 'Grass/Poison', 'false')")



#Allow users to add pokemon to collection by changing owned to "TRUE"

#Allow users to view owned and unowned Pokémon cards.





# TEST CODE
pokemon = db.execute("SELECT * FROM pokemon")
pokemon.each do |pokemon|
 puts "#{pokemon['name']} is a #{pokemon['type']} type Pokémon"
end