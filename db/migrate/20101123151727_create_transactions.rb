class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :id_buyer
      t.integer :id_seller
      t.float :transaction_price

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
