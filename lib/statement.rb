require_relative "account"

class Statement
  def initialize(transactions)
    @transactions = transactions
    @statement_trans = ""
    transactions.each{ |item|  @statement_trans << item }
  end

  def statement_title
    "date || credit || debit || balance"
  end

  def print
    "#{statement_title}#{@statement_trans}" 
  end
end