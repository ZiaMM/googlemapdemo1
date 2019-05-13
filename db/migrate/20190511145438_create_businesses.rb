class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :shop_type
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
      add_index :businesses, [:shop_type], name: "index_businesses_on_shop_type", unique: false, using: :btree
      add_index :businesses, [:name], name: "index_businesses_on_name", unique: true, using: :btree
  end
end
