require 'account'

describe BankAccount do
  it 'can open a new account at $0' do
    account = BankAccount.new
    expect(account.balance).to eq(0)
  end
end
