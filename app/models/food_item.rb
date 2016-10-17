class FoodItem < ApplicationRecord
  belongs_to :section
  belongs_to :userorder
end
