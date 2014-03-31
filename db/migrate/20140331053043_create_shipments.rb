class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.integer :customer_id
      t.datetime :date
      t.integer :invoice_number
      t.boolean :is_returned

      t.timestamps
    end
  end
end
