card_number = "4929735477250543"
puts card_number
# valid = false
usable_array = card_number.scan(/./).map { |e| e.to_i }
usable_array.each_with_index do |x, index|

  if index.even?
    a = x * 2
  elsif index.odd?
    b = x
  else
    c = x
  end

  if a.to_i >= 10
    c = (a - 9)
  else
    c = a
  end

  f = "#{c}" + "#{b}"
  print f


end
