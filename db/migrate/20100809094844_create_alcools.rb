class CreateAlcools < ActiveRecord::Migration
  def self.up
    create_table :alcools do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :alcools
  end
end
