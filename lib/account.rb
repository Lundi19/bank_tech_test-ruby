# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transactions

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    valid_deposit?(amount)
    @balance += amount
    @transactions << deposit_entry(amount)
  end

  def withdraw(amount)
    valid_withdrawl?(amount)
    @balance -= amount
    @transactions << withdrawl_entry(amount)
    negative_balance?
  end

  private

  def valid_deposit?(amount)
    raise 'You can only deposit an amount over 0' if amount <= 0
  end

  def valid_withdrawl?(amount)
    raise 'You can only withdraw an amount over 0' if amount <= 0
  end

  def negative_balance?
   if @balance <= 0 
     'Your account is now overdrawn' 
   end
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
