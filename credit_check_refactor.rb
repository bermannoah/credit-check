valid_card_number = "5541808923795240"
invalid_card_number = "4024007106512380"

# split the string into individual characeters
# convert stringed digits to integers
usable_array = valid_card_number.chars.map { |num| num.to_i }
# double the value of every second digit
numbers_to_multiply = usable_array.map.with_index do |num, index|
  index.even? ? num * 2 : num
end
# if the digit is over 9, add the 2 numbers together
final_numbers = numbers_to_multiply.map do |multiplied|
  multiplied >= 10 ? multiplied - 9 : multiplied
end
# take the sum of the remaining digits
sum = final_numbers.inject(:+)
if sum % 10 == 0
  puts "The number is valid."
else
  puts "The number is invalid."
end
