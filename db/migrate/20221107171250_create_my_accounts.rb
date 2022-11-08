class CreateMyAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :my_accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
