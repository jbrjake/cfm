class AddLevelToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :level, :int
  end

  def self.down
    remove_column :users, :level
  end
end
