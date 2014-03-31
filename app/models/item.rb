class Item < ActiveRecord::Base
  validates_presence_of :serial, :location, :lot_id, :product_id

  belongs_to :lot
  belongs_to :product
end
