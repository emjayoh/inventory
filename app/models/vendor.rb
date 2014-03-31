class Vendor < ActiveRecord::Base
  validates_presence_of :name

  has_many :receipts
end
