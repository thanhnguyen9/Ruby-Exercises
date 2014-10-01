def numeral(num)


  if num % 5 == 1
    p I
  elsif num % 5 == 2
    p II
  elsif num % 5 == 3
    p III
  elsif num % 5 == 4
    p "IIII"
  elsif num % 5 == 0
    p "V"
  end
end
numeral(4)
input = ARGV[0].to_i

if input <= 0 || input > 3000
  puts "Usage: 4_old_school_roman_numerals [1-3000]"
  exit
end

puts old_school_roman_numeral(input)
