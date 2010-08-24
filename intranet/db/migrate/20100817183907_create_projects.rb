class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :link
      t.datetime :due_date
      t.integer :status
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
