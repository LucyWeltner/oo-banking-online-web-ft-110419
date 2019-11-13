class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = pending 
  end
  
  def valid?
    valid = false
    if @receiver.valid? && @sender.valid?
      valid = true 
    end 
    valid
  end
  
end
