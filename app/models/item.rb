class Item < ActiveRecord::Base
  validates_presence_of :serial

  belongs_to :lot
  belongs_to :product
  belongs_to :receipt
  belongs_to :shipment
end
