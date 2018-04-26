require './lib/account.rb'
require './lib/transaction.rb'
require './lib/print.rb'
account = Account.new
transaction = Transaction.new
statement = Print.new
a = account.deposit(1000, '10/01/2012')
b = account.deposit(2000, '13/01/2012')
c = account.withdrawl(500)
transaction.add(a)
transaction.add(b)
transaction.add(c)
s = transaction.transactions
statement.print(s)
