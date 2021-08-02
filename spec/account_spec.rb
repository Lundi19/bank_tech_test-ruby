require 'account'

describe BankAccount do
  it 'can open a new account at $0' do
    account = BankAccount.new
    expect(account.balance).to eq(0)
  end

  it 'can deposit money into the account' do
    account = BankAccount.new
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
end
