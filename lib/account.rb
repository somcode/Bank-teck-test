class Account
  attr_reader :balance, :transactions

  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount, date = check_date)
    @balance += amount
    "#{date} || #{convert_decimal(amount)} ||  || #{convert_decimal(@balance)}"
  end

  def withdrawl(amount, date = check_date)
    raise "You don't have enough balance" if amount > @balance
    @balance -= amount
    "#{date} ||  || #{convert_decimal(amount)} || #{convert_decimal(@balance)}"
  end

  private

  def check_date
    date = Time.now
    date.strftime('%d/%m/%Y')
  end

  def convert_decimal(amount)
    '%.2f' % amount
  end
end
