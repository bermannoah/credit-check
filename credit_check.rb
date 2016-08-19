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



# The older version without loops is here, if that's a thing

# a15 = card_number[15]
# a14 = card_number[14].to_i
# a13 = card_number[13]
# a12 = card_number[12].to_i
# a11 = card_number[11]
# a10 = card_number[10].to_i
# a9 = card_number[9]
# a8 = card_number[8].to_i
# a7 = card_number[7]
# a6 = card_number[6].to_i
# a5 = card_number[5]
# a4 = card_number[4].to_i
# a3 = card_number[3]
# a2 = card_number[2].to_i
# a1 = card_number[1]
# a0 = card_number[0].to_i
#
# b1 = (a14 * 2)
# b2 = (a12 * 2)
# b3 = (a10 * 2)
# b4 = (a8 * 2)
# b5 = (a6 * 2)
# b6 = (a4 * 2)
# b7 = (a2 * 2)
# b8 = (a0 * 2)
#
# if b1 >= 10
#   a14 = (b1 - 9).to_s
# else
#   a14 = b1.to_s
# end
#
# if b2 >= 10
#   a12 = (b2 - 9).to_s
# else
#   a12 = b2.to_s
# end
#
# if b3 >= 10
#   a10 = (b3 - 9).to_s
# else
#   a10 = b3.to_s
# end
#
# if b4 >= 10
#   a8 = (b4 - 9).to_s
# else
#   a8 = b4.to_s
# end
#
# if b5 >= 10
#   a6 = (b5 - 9).to_s
# else
#   a6 = b5.to_s
# end
#
# if b6 >= 10
#   a4 = (b6 - 9).to_s
# else
#   a4 = b6.to_s
# end
#
# if b7 >= 10
#   a2 = (b7 - 9).to_s
# else
#   a2 = b7.to_s
# end
#
# if b8 >= 10
#   a0 = (b8 - 9).to_s
# else
#   a0 = b8.to_s
# end
#
# sum_of_all_digits = a0.to_i + a1.to_i + a2.to_i + a3.to_i + a4.to_i + a5.to_i + a6.to_i + a7.to_i + a8.to_i + a9.to_i + a10.to_i + a11.to_i + a12.to_i + a13.to_i + a14.to_i + a15.to_i
#
# if sum_of_all_digits % 10 == 0
#   valid = true
# else
#   valid = false
# end
#
# if valid == true
#   puts "The number is valid!"
# else
#   puts "The number is invalid!"
# end
#
# # Output
# ## If it is valid, print "The number is valid!"
# ## If it is invalid, print "The number is invalid!"
