class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << { :credit => amount }
  end

  def withdrawl(amount)
    raise "You don't have enough balance" if amount > @balance
    @balance -= amount
  end

  private

  def get_date
    date = Time.now
    date.strftime("%m/%d/%Y")
  end

end
