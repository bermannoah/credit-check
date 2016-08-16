card_number = "342801633855673"

valid = false

# Your Luhn Algorithm Here

a14 = card_number[14]
a13 = card_number[13].to_i
a12 = card_number[12]
a11 = card_number[11].to_i
a10 = card_number[10]
a9 = card_number[9].to_i
a8 = card_number[8]
a7 = card_number[7].to_i
a6 = card_number[6]
a5 = card_number[5].to_i
a4 = card_number[4]
a3 = card_number[3].to_i
a2 = card_number[2]
a1 = card_number[1].to_i
a0 = card_number[0]

b13 = (a13 * 2)
b11 = (a11 * 2)
b9 = (a9 * 2)
b7 = (a7 * 2)
b5 = (a5 * 2)
b3 = (a3 * 2)
b1 = (a1 * 2)

if b13 >= 10
  a13 = (b13 - 9)
else
  a13 = b13
end

if b11 >= 10
  a11 = (b11 - 9)
else
  a11 = b11
end

if b9 >= 10
  a9 = (b9 - 9)
else
  a9 = b9
end

if b7 >= 10
  a7 = (b7 - 9)
else
  a7 = b7
end

if b5 >= 10
  a5 = (b5 - 9)
else
  a5 = b5
end

if b3 >= 10
  a3 = (b3 - 9)
else
  a3 = b3
end

if b1 >= 10
  a1 = (b1 - 9)
else
  a1 = b1
end


sum_of_all_digits = a0.to_i + a1.to_i + a2.to_i + a3.to_i + a4.to_i + a5.to_i + a6.to_i + a7.to_i + a8.to_i + a9.to_i + a10.to_i + a11.to_i + a12.to_i + a13.to_i + a14.to_i

if sum_of_all_digits % 10 == 0
  valid = true
else
  valid = false
end

if valid == true
  puts "The number is valid!"
else
  puts "The number is invalid!"
end

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
