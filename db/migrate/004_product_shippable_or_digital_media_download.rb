class ProductShippableOrDigitalMediaDownload < ActiveRecord::Migration
  def self.up
    rename_column :products, :shipable, :shippable
  end

  def self.down
    rename_column :products, :shippable, :shipable
  end
end
