# Section 7.5 on page 49
# 4 points
#
# Write a program that asks for a starting year and an ending year and then puts
# all the leap years between them (and including them, if they are also leap
# years). Leap years are years divisible by 4 (like 1984 and 2004). However,
# years divisible by 100 are not leap years (such as 1800 and 1900) unless they
# are also divisible by 400 (such as 1600 and 2000, which were in fact leap
# years). What a mess!

def leap(year1,year2)

  for y in year1 .. year2
    if y % 4 == 0 && y % 100 != 0
      p "Leap Year: #{y}"
    elsif y % 100 == 0 && y % 400 == 0
      p "Leap Year: #{y}"
    end

  end

end

leap(1899,1919)
