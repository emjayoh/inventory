class Shipment < ActiveRecord::Base
  validates_presence_of :customer, :date, :invoice_number
  belongs_to :customer
  has_many :items
end
