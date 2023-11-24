class Quantity
  attr_reader :amount, :unit

  def initialize(amount, unit)
    @amount = amount
    @unit = unit
  end

  def ==(other)
    amount == other.amount && unit == other.unit
  end

  def to_s
    "#{amount} #{unit}"
  end
end