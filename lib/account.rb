class Account

  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "You don't have enough balance" if amount > @balance
    @balance -= amount
  end

end
