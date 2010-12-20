class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :var, :null => false
      t.text :value, :null => false

      t.timestamps
    end

    add_index :settings, :var, :uniq => true
  end

  def self.down
    drop_table :settings
  end
end
