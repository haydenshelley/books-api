class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.integer :book_id
      t.integer :store_id

      t.timestamps
    end
  end
end
