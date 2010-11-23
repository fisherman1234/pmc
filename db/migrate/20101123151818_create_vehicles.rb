class CreateVehicles < ActiveRecord::Migration
  def self.up
    create_table :vehicles do |t|
      t.string :size
      t.string :brand
      t.string :model

      t.timestamps
    end
  end

  def self.down
    drop_table :vehicles
  end
end
