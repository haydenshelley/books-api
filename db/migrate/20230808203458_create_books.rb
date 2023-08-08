class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :price
      t.string :availability

      t.timestamps
    end
  end
end
