class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.integer :vendor
      t.datetime :date
      t.integer :po_number

      t.timestamps
    end
  end
end
