class Coffee_Cup
  attr_accessor :amount_of_coffee, :max_capacity

  def initialize(amount_of_coffee = 8, max_capacity = 12)
    @amount_of_coffee = amount_of_coffee
    @max_capacity = max_capacity
  end

  def sip!(amount_of_coffee)
    if @amount_of_coffee > 0
      @amount_of_coffee -= 1
    else
      puts "Hey! You need a refill!"
    end
  end

  def spill!(amount_of_coffee)
    @amount_of_coffee = 0
  end

  def refill!(amount_of_coffee)
    @amount_of_coffee = @max_capacity - 2
  end

  def to_s
    "There is #{@amount_of_coffee}oz of coffee left in your #{@max_capacity}oz cup"
  end
end

amount = Coffee_Cup.new
puts amount
