class Item < ActiveRecord::Base
  validates_presence_of :serial, :location, :lot

  belongs_to :lot
end
