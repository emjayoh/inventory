class Lot < ActiveRecord::Base
  has_many :items
  belongs_to :product
end
