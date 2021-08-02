require 'account'
require 'date'

describe BankAccount do

  let(:account) { BankAccount.new }
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  it 'can open a new account at $0' do
    expect(account.balance).to eq(0)
  end

  it 'can deposit money into the account' do
    account.deposit(10)
    expect(account.balance).to eq(10)
  end

  it 'can withdraw money from the account' do
    account.deposit(200)
    account.withdraw(20)
    expect(account.balance).to eq(180)
  end

  it 'updates transaction history after depesoit including date' do
    account.deposit(200)
    expect(account.transactions).to include("\n#{date} || $200.00 || || $200.00")
  end

  it 'updates transaction history after withdrawl including date' do
    account.deposit(200)
    account.withdraw(100)
    expect(account.transactions).to include("\n#{date} || || $100.00 || $100.00")
  end

  it 'deposit fails if value is 0' do
    expect { account.deposit(0) }.to raise_error('You can only deposit an amount over 0')
  end
end



# date || credit || debit || balance
# 14/01/2012 || || 500.00 || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00