questions = [
	{
	question: "Who is the coolest person in the world?",
	answer: "a",
	a: "nick",
	b: "jim",
	c: "Nick Cannon, cause he's hilarious"
	},
	{
	 question: "What is the length in inches of a foot?",
	 answer: "c",
	 a: "8",
	 b: "24",
	 c: "12"
	},
	{
	 question: "How tall is the empire state building in feet?",
	 answer: "b",
	 a: "1000",
	 b: "1250",
	 c: "29"
	},
	{
	 question: "What is hello in spanish?",
	 answer: "b",
	 a: "What up G?",
	 b: "Hola",
	 c: "Hi, we're from Missouri can you take our picture?"
	},
	{
	 question: "How much is a bakers dozen?",
	 answer: "c",
	 a: "10",
	 b: "20",
	 c: "13"
	},
	{
	 question: "How much should you tip if a waiter does their job?",
	 answer: "a",
	 a: "20%",
	 b: "100%",
	 c: "5%"
	},
	{
	 question: "What is my last name?",
	 answer: "a",
	 a: "Rambow",
	 b: "Rambo",
	 c: "Rainbow"
	},
	{
	 question: "Who is a famous golfer?",
	 answer: "b",
	 a: "LeBron James",
	 b: "Tiger Woods",
	 c: "Jason Heyword"
	},
	{
	 question: "What is the Iron Yard's Address?",
	 answer: "c",
	 a: "1337 Hollywood Drive",
	 b: "1428 Watershade Court",
	 c: "510 Mill Street"
	},
	{
	 question: "Will I fail this course?",
	 answer: "b",
	 a: "Yes",
	 b: "No",
	 c: "Most definitely"
	},
]

sum = 0
questions.each do |i|
  p i[:question]
  print "a: "
  puts i[:a]
  print "b: "
  puts i[:b]
  print "c: "
  puts i[:c]
  response =  gets.chomp

  if response == i[:answer]
    p "Right"
    sum += 1
  else
    p "Wrong"
  end
end
p "Total of your right answer: #{sum}"
percentage = sum*10
p "Your percentage #{percentage}%"
