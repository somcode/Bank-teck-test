class Print
  def print_header
    puts " date || credit || debit || balance "
  end

  def print_body(transactions)
    transactions.reverse.each do |payment|
      puts payment
    end
  end
end
