require './lib/account.rb'
require './lib/print.rb'
account = Account.new
show = Print.new
account.deposit(1000)
account.deposit(2000)
account.withdrawl(500)
transaction = account.transactions
show.print(transaction)
