class Transfer
  # your code here
  attr_reader :sender
  attr_accessor :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount = sender, receiver, amount
  end
end
