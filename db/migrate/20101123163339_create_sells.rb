class CreateSells < ActiveRecord::Migration
  def self.up
    create_table :sells do |t|
      t.integer :user_id
      t.float :offer_term
      t.float :min_price
      t.string :latitude
      t.string :longitude
      t.boolean :open

      t.timestamps
    end
  end

  def self.down
    drop_table :sells
  end
end
