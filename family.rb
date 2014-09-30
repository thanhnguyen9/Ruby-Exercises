class Person
  attr_accessor :name, :height, :weight

  def initialize(name, height, weight)
    @name = name
    @height = height
    @weight = weight
  end
end

family_member1 = Person.new "Bob" ,"68", "220"
family_member2 = Person.new "Ted", "69", "200"
family_member3 = Person.new "Carl", "72", "215"
family_member4 = Person.new "Daisy", "63", "115"
family_member5 = Person.new "Sarah", "62", "110"

family = [family_member1, family_member2, family_member3, family_member4, family_member5]

def run(family)
  run = false
  until run == true
    p "Please enter h or w to find a specific family member by height or weight"
    user = gets.chomp

    if user == "h"
      height(family)
      run = true
    elsif user ==  "w"
      weight(family)
      run = true
    end
  end
end

def height(family)
  puts "Please enter height in inches to find a family member"

  answer = gets.chomp
  result = []

  family.each {|member| result << member.name if member.height == answer}

  if result.size > 0
    result.each {|i| p "#{i} is #{answer} inches tall"}
  else
    p "No family match your input"
  end
end

def weight(family)

  p "Please enter weight in pounds to find a family member"
  weight = gets.chomp
  result = []

  family.each {|member| result << member.name  if member.weight == weight}

  if result.size > 0
    result.each {|i| p "#{i} is #{weight} pounds"}
  else
    p "No family member match the input"
  end
end

run(family)
