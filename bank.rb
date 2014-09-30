require 'pry'

class Bank

  attr_accessor :bname, :persons, :money_person, :money_bank, :cash

  def initialize(bname)
    @bname = bname
    @persons = []
    @banks= []
    @money_person = 0
    @money_bank = 0
    @cash = 0
    p "#{bname} was just created"
  end

  def open_account(person)
    @persons << person
    p "#{person.pname}, thanks for opening account at #{@bname}"
  end

  def deposit(account, amount)


    @persons.each do |person|
      if account.pname == person.pname
        if amount > person.balance
          p "#{person.pname}does not have enough cash to deposit #{amount}"
        else
          @money_bank = amount
          @cash += amount
          @money_person = person.balance - @money_bank
          p "#{person.pname} deposited $#{amount} to #{@bname}. #{person.pname} has $#{@money_person}. #{person.pname}'s acccount has $#{@money_bank}"
        end
      end
    end
  end

  def withdraw(account, lost)
    @persons.each do |person|
      if account.pname == person.pname
        if lost > person.balance
          p "#{person.pname} does not have enough money in the account to withdraw #{lost}"
        else
          @money_bank -= lost
          @money_person += lost
          @cash -= lost
          p "#{person.pname} withdrew $#{lost} from #{@bname}. #{person.pname} has $#{@money_person}. Shehzan's account has $#{@money_bank}."
        end
      end
    end
  end

  def transfer(person, other_bank, amount)
    withdraw(person, amount)
    other_bank.deposit(person, amount)
    p "#{person.pname} transfer #{amount} from #{bname} to #{other_bank.bname}. The #{bname} now has #{@money_bank}, the #{other_bank.bname} has #{amount}"
  end

  def total_cash_in_bank
    p "#{bname} has #{@cash} in bank"
  end

end

class Person

  attr_accessor :pname, :balance

  def initialize(pname, balance)
    @pname = pname
    @balance = balance
    p "Hi #{pname}, you have $#{balance}!"
  end
end

chase = Bank.new("JP Morgan Chase")
wells_fargo = Bank.new("Wells Fargo")
me = Person.new("Shehzan", 500)
friend1 = Person.new("John", 1000)
chase.open_account(me)
chase.open_account(friend1)
wells_fargo.open_account(me)
wells_fargo.open_account(friend1)
p chase.persons
p wells_fargo.persons
chase.deposit(me, 200)#Shehzan deposited $200 to JP Morgan Chase. Shehzan has $300. Shehzan's acccount has $200.
chase.deposit(friend1, 300)#John deposited $300 to JP Morgan Chase. John has $700. John's account has $300.
chase.withdraw(me, 50)#Shehzan withdrew $50 from JP Morgan Chase. Shehzan has $350. Shehzan's account has $150.
chase.transfer(me, wells_fargo, 100)#Shehzan transfered $100 from the JP Morgan Chase account to the Wells Fargo account. The JP Morgan Chase account has $50 and the Wells Fargo account has $100.
chase.deposit(me, 5000)
chase.withdraw(me, 5000)
chase.total_cash_in_bank
wells_fargo.total_cash_in_bank
