class Inventory < ApplicationRecord
  belongs_to :book
  belongs_to :store
end
