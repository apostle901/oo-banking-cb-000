class Transfer
  # your code here
  attr_reader :sender
  attr_accessor :account, :amount

  def initialize(sender, account, amount)
    @sender, @bank_account, @amount = name, account, amount
  end
end
