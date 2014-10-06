# Create a Parcel class.
# You should be able to create a new parcel and specify the dimensions and weight in the arguments.
# When you call volume on an instance, it should return the product of the sides.
# When you call the cost_to_ship method on your parcel, return a cost based on a formula you make up.
# Build a program that lets users calculate shipping costs.

class Parcel
	attr_accessor :dimensions, :weight, :cost, :he, :we

	def initialize(height,weight)
		@height = height
		@weight = weight
		@cost = 0
	end

	def volume
		p "You want to ship a parcel #{@height} ft and #{@weight} pounds"
	end

	def cost_to_ship
		@cost = @height.to_i * 5 + @weight.to_i * 10
		p "The fee of shipping is $5 for 1 feet and $10 for 1 pounds"
		p "Your total cost would be $#{@cost}"
	end

	def ask
		p "Please enter height"
		he = gets.chomp
		p "Please enter weight"
		we = gets.chomp
		total = he.to_i * 5 + we.to_i * 10
		p "Your total will be #{total}"
	end

	def calculate
		puts "\r"
		p "Do you want to count shipping cost:? y for yes e for exit"
		answer = gets.chomp
		if answer == "y"
			ask()
		else
			return
		end

		puts "\r"
		p "Do you want to keep calculating: y for yes, e for exit"
		answer = gets.chomp
		if answer == "y"
			ask()
		else
			return
		end
	end
end

class User
	attr_accessor :name, :he, :we
	@@products = []

	def initialize(name)
		@name = name
		@he = he
		@we = we
		User.question
	end

	def self.question
		p "Please enter height of your parcel"
		he = gets.chomp
		p "Please enter weight of your parcel"
		we = gets.chomp
		p "You want to ship a parcel #{he} ft and #{we} pounds"
		new = Parcel.new(he,we)
		new.volume
		new.cost_to_ship
		new.calculate
	end
end

thanh = User.new :Thanh

