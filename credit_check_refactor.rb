card_number = "5541801923795240"
numbers_to_multiply = []
numbers_to_stay_the_same = []
modified_number = []
usable_array = card_number.scan(/./).map { |e| e.to_i }
usable_array.each_with_index do |x, index|

  if index.even?
    numbers_to_multiply << (x * 2)
  else
    numbers_to_stay_the_same << x
  end
end

all = numbers_to_multiply + numbers_to_stay_the_same

all.each do |x|
  if x >= 10
    x = "#{x - 9}"
  else
    x = "#{x}"
  end
  modified_number << x.to_i
end

sum = modified_number.inject(:+)

if sum % 2 == 0
  puts "A valid credit card!"
else
  puts "Not a valid credit card!"
end
