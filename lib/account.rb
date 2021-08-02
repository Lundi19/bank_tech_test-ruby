class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << "#{date} || $#{amount} || || $#{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
  end

end