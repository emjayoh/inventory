class Item < ActiveRecord::Base
  belongs_to :lot
  belongs_to :product
  belongs_to :receipt
  belongs_to :shipment
end
