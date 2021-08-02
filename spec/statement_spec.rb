require 'statement'

describe Statement do
  # it "should initialize a new statement" do
  #   statement = Statement.new
  # end

  describe do
    let(:account){ double("Account")}
    it "prints a statement with one transaction" do
      allow(account).to receive(:transactions).and_return("\n 02/08/2021 || 210.00 || || 210.00" )
  
      statement = Statement.new(account.transactions)
      expect(statement.print).to eq("date || credit || debit || balance \n 02/08/2021 || 210.00 || || 210.00")
    end
  end
end