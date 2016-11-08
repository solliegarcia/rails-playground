class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2 # percision is how many values before the decimal and then SCALE is after the decimal.
      t.integer :quantity

      t.timestamps
    end
  end
end
