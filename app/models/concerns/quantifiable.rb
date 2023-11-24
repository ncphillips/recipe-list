# A concern for models that can be quantified
module Quantifiable
  extend ActiveSupport::Concern

  included do
    composed_of :quantity, mapping: {amount: :amount, unit: :unit}
  end
end