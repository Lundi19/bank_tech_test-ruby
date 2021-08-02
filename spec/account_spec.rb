require 'account'

describe BankAccount do

  account = BankAccount.new
  
  it 'can open a new account at $0' do
    expect(account.balance).to eq(0)
  end

  it 'can deposit money into the account' do
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
end
