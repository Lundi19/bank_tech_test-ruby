require "account"

class Statement
  def initialize(transactions)
    @transactions = transactions
    @statement_trans = ""
    transactions.each{ |item|  @statement_trans << item }
  end

  def print
    "date || credit || debit || balance #{@statement_trans}" 
  end
end