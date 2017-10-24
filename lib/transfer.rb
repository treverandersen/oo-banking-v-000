class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status 
   
  def initialize(sender, receiver, amount)
    
    @status = 'pending'
    @transfer_amount = 0
  end

end
