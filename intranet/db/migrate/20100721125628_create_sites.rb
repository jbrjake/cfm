class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :username
      t.string :password
      t.string :added_by
      t.string :last_modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
