class CreateProductFiles < ActiveRecord::Migration
  def self.up
    create_table :product_files do |t|
      t.references :product
      t.string :path
      t.string :key

      t.timestamps
    end
  end

  def self.down
    drop_table :product_files
  end
end
