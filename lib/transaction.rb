class Transaction

  def initialize
    @transactions = []
  end

  def add(transaction)
    @transactions << transaction
  end

end
