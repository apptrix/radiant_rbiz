class ProductShipableOrDigitalMediaDownload < ActiveRecord::Migration
  def self.up
    add_column :products, :shippable, :boolean
    add_column :products, :digital_media, :boolean
  end

  def self.down
    remove_column :products, :shippable
    remove_column :products, :digital_media
  end
end
