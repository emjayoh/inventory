class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :item_number
      t.integer :quantity

      t.timestamps
    end
  end
end
