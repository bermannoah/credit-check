card_number = "4929735477250543"

valid = false

# Your Luhn Algorithm Here

# double the value of every second digit moving right - > left

  # break string into separate integers

  numbers_to_modify = card_number.split("").map(&:to_i)

  # modify the even indexes in the array

  even_numbers = numbers_to_modify.values_at(* numbers_to_modify.each_index.select {|i| i.even?})

  puts modified_numbers

  # join the results into a new array

# def modify_number(number)
#
#   number * 2
# end
#
# def modify_credit_card_number(card_number)
#   numbers = card_number.split("")
#   results = numbers.collect do |number|
#   modified_number = modify_number(number)
# sum all the digits

# iff the total modulo 10 is equal to 0 then the number is valid





# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
