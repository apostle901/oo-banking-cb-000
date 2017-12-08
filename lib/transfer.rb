class Transfer
  # your code here
  attr_reader :name
  attr_accessor :account, :amount
  
  def initialize(name, account, amount)
    @name, @bank_account, @amount = name, account, amount
  end
end
