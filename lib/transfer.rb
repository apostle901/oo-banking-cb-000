class Transfer
  # your code here
  attr_reader :sender
  attr_accessor :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender, @receiver, @amount, @status = sender, receiver, amount, 'pending'
  end

  def valid?
    @sender.valid? && @receiver.valid? && @status == 'pending'
  end

  def execute_transaction
    return "Transaction rejected. Please check your account balance." if !valid?
    return if @status == 'complete'
    @sender.deposit(@amount * -1)
    @receiver.deposit(@amount)
    @status = 'complete'
  end
end
