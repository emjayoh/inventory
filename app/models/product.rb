class Product < ActiveRecord::Base
  validates_presence_of :item_number
  has_many :lots
end
