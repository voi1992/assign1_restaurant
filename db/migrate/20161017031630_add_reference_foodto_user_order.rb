class AddReferenceFoodtoUserOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :food_items, :userorder, index:true
  end
end
