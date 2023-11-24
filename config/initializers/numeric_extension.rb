class Numeric
  def cup
    Quantity.new(self, "cup")
  end

  def tbsp
    Quantity.new(self, "tbsp")
  end

  def tsp
    Quantity.new(self, "tsp")
  end

  def gram
    Quantity.new(self, "g")
  end

  def kg
    Quantity.new(self, "kg")
  end

  alias_method :cups, :cup
  alias_method :tablespoons, :tbsp
  alias_method :teaspoons, :tsp
  alias_method :grams, :gram
  alias_method :g, :gram
  alias_method :kilograms, :kg
end