class Transfer
  # your code here
  attr_reader :sender
  attr_accessor :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, 'pending'
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end
end
