class CreateSells < ActiveRecord::Migration
  def self.up
    create_table :sells do |t|
      t.integer :id_user
      t.float :offer_term
      t.float :min_price
      t.string :latitude
      t.string :longitude
      t.integer :id_transaction

      t.timestamps
    end
  end

  def self.down
    drop_table :sells
  end
end
