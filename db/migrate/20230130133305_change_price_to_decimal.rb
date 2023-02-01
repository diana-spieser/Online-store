class ChangePriceToDecimal < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :price, :decimal
  end
end
