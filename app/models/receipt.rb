class Receipt < ActiveRecord::Base
  validates_presence_of :vendor, :date, :po_number

  belongs_to :vendor
  has_many :items
end
