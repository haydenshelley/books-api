class RemoveAvailabilityFromBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :availability, :string
  end
end
