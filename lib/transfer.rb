class Transfer
  # your code here
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = 'pending'
    @amount = amount
  end

  def valid?
    sender.valid? == true && receiver.valid? == true ? true : false
  end

  def execute_transaction
    if sender.valid? == true && receiver.valid? == true

      if sender.balance > amount

        receiver.balance + amount
        sender.balance - amount
      else
        "Transaction rejected. Please check your account balance."
      end

    end

  end

end
