require 'pry'
class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = 'open'
  end

  def deposit(amount)
    @balance = amount + balance
  end

  def display_balance 
    return "Your balance is $#{name.balance}."
  end

end
