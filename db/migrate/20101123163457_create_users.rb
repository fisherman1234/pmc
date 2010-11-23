class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.strinf :last_name
      t.string :civility
      t.string :email
      t.float :account_balance
      t.string :phone_number
      t.integer :vehicle_id

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
