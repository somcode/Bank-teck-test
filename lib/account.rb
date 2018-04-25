class Account

  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
    @transactions = []
  end

  def deposit(amount, date = get_date)
    @balance += amount
    @transactions << "#{date} || #{amount} ||  || #{@balance} "
  end

  def withdrawl(amount, date = get_date)
    raise "You don't have enough balance" if amount > @balance
    @balance -= amount
    @transactions << "#{date} ||  || #{amount} || #{@balance} "
  end

  private

  def get_date
    date = Time.now
    date.strftime("%d/%m/%Y")
  end

end
