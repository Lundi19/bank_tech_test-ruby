## user stories

```
As a banking customer,
So that I can start banking
I would like to be able to open an account with $0

As a banking customer,
So that I can have money when I need it
I would like to be able to withdraw money from my account

As a banking customer,
So that I can keep my money safe
I would like to be able to deposit money into my account

As a banking customer,
So that I can keep track of my spending and saving
I would like to be able to view my statement
```


## classes

### BankAccount 

-INITIALIZE
transactions history
initial balance

-DEPOSIT

-WITHDRAW


### BankStatement

INITIALIZE(transaction history)

print


require  "./lib/statement.rb"


2.7.0 :003 > bank = BankAccount.new
2.7.0 :003 > bank.deposit(1000)
2.7.0 :003 > bank.withdraw(200)
2.7.0 :003 > bank.withdraw(400)


2.7.0 :003 > statement = Statement.new(bank.transactions)
2.7.0 :003 > puts statement.print







