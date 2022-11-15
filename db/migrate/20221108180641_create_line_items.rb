class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.string :quantity
      t.integer :price

      t.timestamps
    end
  end
end
