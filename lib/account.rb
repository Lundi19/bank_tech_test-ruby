class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    valid_trans?(amount)
    @balance += amount
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << "\n#{date} || $#{amount}.00 || || $#{@balance}.00"
  end

  def withdraw(amount)
    @balance -= amount
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << "\n#{date} || || $#{amount}.00 || $#{@balance}.00"
  end

  private

  def valid_trans?(amount)
      raise 'You can only deposit an amount over 0' if amount <= 0
  end

end