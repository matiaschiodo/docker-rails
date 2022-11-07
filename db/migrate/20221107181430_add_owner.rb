class AddOwner < ActiveRecord::Migration[5.2]
  def change
    add_reference :budgets, :owner, null:false, foreign_key: { to_table: :users }, index: true
  end
end
