class AddPaperclipToAssets < ActiveRecord::Migration
  def self.up
    add_column :assets, :asset_file_name, :string
    add_column :assets, :asset_content_type, :string
    add_column :assets, :asset_file_size, :integer
  end

  def self.down
    remove_column :assets, :asset_file_size
    remove_column :assets, :asset_content_type
    remove_column :assets, :asset_file_name
  end
end
