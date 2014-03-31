class Lot < ActiveRecord::Base
  validates_presence_of :item_number, :quantity

  has_many :items
  has_one :product
end
