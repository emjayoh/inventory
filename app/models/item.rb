class Item < ActiveRecord::Base
  belongs_to :lot
  belongs_to :product
end
