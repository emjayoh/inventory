class AddShipmentIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :shipment_id, :integer
  end
end
