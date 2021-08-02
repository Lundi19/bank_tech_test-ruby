require_relative "account"

class Statement
  def initialize(transactions)
    @transactions = transactions
  end

  def print
    "date || credit || debit || balance " + @transactions 
  end
end