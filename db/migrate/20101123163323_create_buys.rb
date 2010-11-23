class CreateBuys < ActiveRecord::Migration
  def self.up
    create_table :buys do |t|
      t.integer :user_id
      t.string :latitude
      t.string :longitude
      t.float :max_price
      t.boolean :open

      t.timestamps
    end
  end

  def self.down
    drop_table :buys
  end
end
