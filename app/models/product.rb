class Product < ActiveRecord::Base
  validates_presence_of :item_number
end