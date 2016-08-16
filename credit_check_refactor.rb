card_number = "6011797668867828"

valid = false

usable_array = card_number.scan(/./).map { |e| e.to_i } # converts string to usable array
# multiply every other number by 2

usable_array.each_with_index do |number, idx|
  number = usable_array[0..15]
  

  if idx % 2 == 0
    print number * 2
  else
    print number
  end


#   usable_umultiplied_array = multiplied_array.scan(/./).map { |e| e.to_i }
end

# puts usable_array


# combine everything together
