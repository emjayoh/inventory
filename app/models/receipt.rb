class Receipt < ActiveRecord::Base
  belongs_to :vendor
  has_many :items
end
