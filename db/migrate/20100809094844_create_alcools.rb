class CreateAlcools < ActiveRecord::Migration
  def self.up
    create_table :alcools do |t|
      t.string :name
      t.integer :quantity
      t.integer :quantity_command
      t.integer :limit_alcool
      t.timestamps
    end
  end

  def self.down
    drop_table :alcools
  end
end
