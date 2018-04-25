class Print
  def print(transactions)
    print_header
    print_body(transactions)
  end

  def print_body(transactions)
    transactions.reverse.each do |payment|
      puts payment
    end
  end

  def print_header
    puts " date || credit || debit || balance "
  end

end
