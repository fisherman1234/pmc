class CreateBuys < ActiveRecord::Migration
  def self.up
    create_table :buys do |t|
      t.integer :id_user
      t.string :latitude
      t.string :longitude
      t.float :max_price
      t.integer :id_transaction

      t.timestamps
    end
  end

  def self.down
    drop_table :buys
  end
end
