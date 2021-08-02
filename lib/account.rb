class BankAccount

  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    valid_trans?(amount)
    @balance += amount
    @transactions << deposit_entry(amount)
  end

  def withdraw(amount)
    @balance -= amount
    @transactions << withdrawl_entry(amount)
  end

  private

  def valid_trans?(amount)
    raise 'You can only deposit an amount over 0' if amount <= 0
  end

  def date_today
    Time.now.strftime('%d/%m/%Y')
  end

  def two_decimals(amount)
    ('%.2f' % amount)
  end

  def withdrawl_entry(amount)
    "\n#{date_today} || || $#{two_decimals(amount)} || $#{two_decimals(@balance)}"
  end

  def deposit_entry(amount)
    "\n#{date_today} || $#{two_decimals(amount)} || || $#{two_decimals(@balance)}"
  end

end