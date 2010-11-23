class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :buy_id
      t.integer :sell_id
      t.float :transaction_price

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
