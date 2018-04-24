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
