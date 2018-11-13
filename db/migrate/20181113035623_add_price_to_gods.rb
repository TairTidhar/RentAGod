class AddPriceToGods < ActiveRecord::Migration[5.2]
  def change
    add_column :gods, :price, :integer
  end
end
