class AddFoodToShopingcarts < ActiveRecord::Migration
  def change
    add_reference :shopingcarts, :food, index: true, foreign_key: true
  end
end
