class BankAccount
  attr_reader:name
  attr_accessor :status,:balance
def initialize(name)
  @name=name
  @status="open"
  @balance = 1000
  @@all=[]
end

  def deposit(deposit)
    @balance+=deposit
  end
  
   def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
     @balance > 0 && status=="open"
  end

  def close_account
    self.status="closed"
  end

end