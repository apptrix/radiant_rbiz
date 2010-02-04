class ProductFileStore < ActiveRecord::Migration
  def self.up
    add_column :projects, :on_sale, :boolean, :default => false
    add_column :products, :file_path, :string
  end

  def self.down
    remove_column :projects, :on_sale
    remove_column :products, :file_path
  end
end
