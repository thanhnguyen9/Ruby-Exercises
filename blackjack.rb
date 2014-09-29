# 10 - Hit or stay
# hit
#   I get an additional card
#   check to see if someone wins
#   goto 10
# stay
#   dealer deals himself cards
#   if dealer is < 17
#     he gets more cards
#   check to see if someone wins
# end

class Blackjack

  attr_accessor :name, :game_on, :card_value

  def initialize(name)
    @name = name
    @card_value = 0
    @game_on = false

  end

  def pass_card
    a = rand(1..11)
    b = rand(1..10)
    @card_value = a + b
    p "#{@name}, you get #{a} and #{b}. #{@name} total is #{@card_value}"
  end

  def get_card


      p "Do you want to hit or stay: "
      user = gets.chomp
      until @game_on == true

        if user == "hit"
            new_card = rand(1..11)
            @card_value += new_card
            if @card_value > 21
              p "Your new card is #{new_card}. You are busted"
              @game_on = true
            elsif @card_value == 21
              @game_on = true
            else
              p "you get #{new_card} and total is #{@card_value}"
              p "Do you want to hit or stay: "
              user = gets.chomp
              @game_on = false
            end
        elsif user == "stay"
            @game_on = true
        end
      end
      p "#{@name}, you get #{@card_value}"
    end

    def who_win(person)

      if @card_value > person.card_value && @card_value <= 21
        p "You win"
      elsif @card_value < 21 && person.card_value >21
        p "You win"
      elsif @card_value == person.card_value || (@card_value > 21 && person.card_value > 21)
        p "You draw"
      elsif  @card_value < person.card_value || @card_value > 21
        p "You loose"
      end
    end
end

thanh = Blackjack.new("Thanh")
thanh.pass_card
thanh.get_card

dealer = Blackjack.new("Dealer")
dealer.pass_card
dealer.get_card

thanh.who_win(dealer)
