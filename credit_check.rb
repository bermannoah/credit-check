puts "Enter card number > "
card_number = gets.chomp.to_s

usable_array = card_number.chars.map { |num| num.to_i } # converts entry string to integers, individual characters

numbers_to_multiply = usable_array.reverse.map.with_index do |num, index|
  if card_number.length == 15 || card_number.length == 16               # checks to see if card_number is a cc number
    index.odd? ? num * 2 : num              # performs necessary math depending on type of card
  else
    num = 1 # resets num to one so it only puts once!
    puts "That is not a credit card number."
    exit
  end
end

final_numbers = numbers_to_multiply.map do |multiplied|
  multiplied >= 10 ? multiplied - 9 : multiplied                  # if anything is over 10, subtracts 9
end

sum = final_numbers.inject(:+)                    # sums all numbers
if sum % 10 == 0                                  # checks to see if the sum is divisible by 10, gives result
  puts "The number is valid!"
else
  puts "The number is invalid!"
end
