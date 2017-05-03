# Method to create a list



# input: string of items separated by spaces (example: "carrots apples cereal pizza")


#1
# steps:
  # create an empty list
  # set default quantity
  # output: hash
def new_list(items)
  item_array = items.split(' ') # => [carrots apples cereal pizza]

  x = 1
  item_array.length.times do
    item_array.insert(x, '1')
    x += 2
  end
  item_hash = Hash[*item_array]
end


#2
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: create a key-value pair and add it to the hash
# output: no return
def add_item(list, item_name, item_qty = 1)
  list[item_name] = item_qty
end




#3
# Method to remove an item from the list
# inputs: hash and key
# steps: search the hash for the key, then delete it
# output: no return
def remove_item(list, item_name)
  list.delete(item_name)
end



#4
# Method to update the quantity of an item
# input: hash, key, new value
# steps: find the key, then update the value
# output: no return
def update_qty(list, item_name, item_qty)
    if list[item_name] != nil
    list[item_name] = item_qty
  else
    puts "#{item_name} is not in your list"
  end
end







#5
# Method to print a list and make it look pretty
# input: hash
# steps: print with formatting
# output: hash

def print_list(list)
  puts "GROCERY LIST"
  list.each{|item, quantity| puts " #{item}: #{quantity}"}
end



# TEST
p grocery_list = new_list("carrots apples cereal pizza")
add_item(grocery_list, 'milk')
add_item(grocery_list, 'beer', 24)
p grocery_list

remove_item(grocery_list, "carrots")
p grocery_list

update_qty(grocery_list, "pizza", 2)
p grocery_list

update_qty(grocery_list, "carrots", 2)
print_list(grocery_list)


# ##### ##  USER INTERFACE  ## #####
# ### INTRO ###
#     puts "---------------------------------------------------------"
#     puts "      WELCOME TO THE GROCERY LIST CREATION TOOL!"
#     puts "---------------------------------------------------------"
# ### ENTER ITEMS ###
#     puts "Let's get started.  Please enter your grocery items, separated by spaces."
#     grocery_list = gets.chomp
#     grocery_list = new_list(grocery_list)
#     puts "--------------------"
#     puts "Here is what we have so far:"
#     puts "--------------------"
#     print_list(grocery_list)
#     puts "--------------------"
# ### ADD ITEMS ###
#     loop do
#       puts "Did you miss anything?  Type in an item now, or 'done' to move on to update quantities."
#       item_name = gets.chomp
#       break if item_name == 'done'
#       add_item(grocery_list, item_name, item_qty = 1)
#       puts "Added: #{item_name}"
#     end
#     puts "--------------------"
#     print_list(grocery_list)
#     puts "--------------------"
# ### UPDATE QUANTITIES ###
#     loop do
#       puts "If you wish to update an item's quantity, type in its name or 'done' to move on."
#       item_name = gets.chomp
#       break if item_name == 'done'
#       puts "New quantity for #{item_name}:"
#       new_quantity = gets.chomp
#       update_qty(grocery_list, item_name, new_quantity)
#       puts "--------------------"
#       print_list(grocery_list)
#       puts "--------------------"
#     end
#     puts "--------------------"
#     print_list(grocery_list)
#     puts "--------------------"
# ### REMOVE ITEMS ###
#     loop do
#       puts "Having regrets?  If you wish to remove an item from the list, type in its name or 'done' to complete."
#       item_name = gets.chomp
#       break if item_name == 'done'
#       remove_item(grocery_list, item_name)
#       puts "Removed: #{item_name}"
#       puts "--------------------"
#       print_list(grocery_list)
#       puts "--------------------"
#     end
#     puts "--------------------"
#     print_list(grocery_list)
#     puts "--------------------"
# ### CLOSE OUT ###
#     puts "FANTASTIC!  Here is your final list.  HAVE A WONDERFUL DAY!!!"
#     puts "--------------------"
#     puts "--------------------"
#     print_list(grocery_list)
#     puts "--------------------"
#     puts "--------------------"
