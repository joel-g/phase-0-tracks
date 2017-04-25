#gather info from user (name, age, num children, decore theme, house sq ft)

#convert input to needed data types

#get updates

#print new hash

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

puts customer

puts "To change an answer enter key to change or type exit"

update = gets.chomp.to_sym
if update == "exit"
else puts "What is the new answer for #{update} (don't type the colon)"
	 customer[update] = gets.chomp
	 puts customer
end
	