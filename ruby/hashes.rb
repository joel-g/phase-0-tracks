#gather info from user (name, age, num children, decore theme, house sq ft)

#convert input to needed data types

#get updates

customer = {

}

puts "What is the new client's full name?"
customer[:fullname] = gets.chomp

puts "What is customer's age?"
customer[:age] = gets.chomp.to_i

puts "How many children does the customer have?"
customer[:kid_count] = gets.chomp.to_i

puts "What is customer's decore theme?"
customer[:decore_theme] = gets.chomp

puts "How many square feet is the home?"
customer[:home_size] = gets.chomp.to_i

