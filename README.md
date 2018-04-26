## Bank Tech Test

### User Stories

```
As a client
So that I can have money in my account
I’d like to make a deposit.

As a client
So that I can withdrawl money from my account
I’d like to make a withdrawal.

As a client
So that I can check my transactions
I’d like to see an account statement containing date, amount, balance.
```

### Requirements
* Interact with a REPL
* Deposits, withdrawal
* Account statement (date, amount, balance) printing
* Data can be kept in memory(no DB)

### Acceptance criteria
* Given a client makes a deposit of 1000 on 10-01-2012
* And a deposit of 2000 on 13-01-2012
* And a withdrawal of 500 on 14-01-2012
* When she prints her bank statement
Then she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
## Run the bank account app

1. Open your terminal and clone this repository

2. Change directory ```cd Bank_tech_test``` and then run  ```
bundle install```
3. Open IRB by typing ```irb``` on you terminal
4. Type the following commands, one at a time and press enter after each one
```
require './lib/account.rb'
require './lib/transaction.rb'
require './lib/print.rb'
```
```
account = Account.new
transaction = Transaction.new
statement = Print.new
```
You can pass the date manually otherwise it will set it to today's date as default value.
```
a = account.deposit(1000, '10/01/2012')
b = account.deposit(2000, '13/01/2012')
c = account.withdrawl(500)
```
```
transaction.add(a)
transaction.add(b)
transaction.add(c)
```
```
s = transaction.transactions
statement.print(s)
```
5. When you want to finish the session, type ```exit``` on your terminal

```ruby
Somayehs-MacBook-Pro:Bank-teck-test somayeh$ irb
2.4.1 :001 > require './lib/account.rb'
 => true
2.4.1 :002 > require './lib/transaction.rb'
 => true
2.4.1 :003 > require './lib/print.rb'
 => true
2.4.1 :004 > account = Account.new
 => #<Account:0x007fc964043ac8 @balance=0>
2.4.1 :005 > transaction = Transaction.new
 => #<Transaction:0x007fc9640397a8 @transactions=[]>
2.4.1 :006 > statement = Print.new
 => #<Print:0x007fc96402b158>
2.4.1 :007 > a = account.deposit(1000, '10/01/2012')
 => "10/01/2012 || 1000.00 ||  || 1000.00 "
2.4.1 :008 > b = account.deposit(2000, '13/01/2012')
 => "13/01/2012 || 2000.00 ||  || 3000.00 "
2.4.1 :009 > c = account.withdrawl(500)
 => "26/04/2018 ||  || 500.00 || 2500.00 "
2.4.1 :010 > transaction.add(a)
 => ["10/01/2012 || 1000.00 ||  || 1000.00 "]
2.4.1 :011 > transaction.add(b)
 => ["10/01/2012 || 1000.00 ||  || 1000.00 ", "13/01/2012 || 2000.00 ||  || 3000.00 "]
2.4.1 :012 > transaction.add(c)
 => ["10/01/2012 || 1000.00 ||  || 1000.00 ", "13/01/2012 || 2000.00 ||  || 3000.00 ", "26/04/2018 ||  || 500.00 || 2500.00 "]
2.4.1 :013 > s = transaction.transactions
 => ["10/01/2012 || 1000.00 ||  || 1000.00 ", "13/01/2012 || 2000.00 ||  || 3000.00 ", "26/04/2018 ||  || 500.00 || 2500.00 "]
2.4.1 :014 > statement.print(s)
 date || credit || debit || balance
26/04/2018 ||  || 500.00 || 2500.00
13/01/2012 || 2000.00 ||  || 3000.00
10/01/2012 || 1000.00 ||  || 1000.00
 => ["26/04/2018 ||  || 500.00 || 2500.00 ", "13/01/2012 || 2000.00 ||  || 3000.00 ", "10/01/2012 || 1000.00 ||  || 1000.00 "]
2.4.1 :015 >
```
## Run all tests in command line
<img width="531" alt="screen shot 2018-04-26 at 16 30 07" src="https://user-images.githubusercontent.com/34063826/39315686-318b010e-496f-11e8-971b-68f69c4651d7.png">
