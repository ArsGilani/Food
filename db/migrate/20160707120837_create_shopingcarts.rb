class CreateShopingcarts < ActiveRecord::Migration
  def change
    create_table :shopingcarts do |t|
      t.integer :counter

      t.timestamps null: false
    end
  end
end
