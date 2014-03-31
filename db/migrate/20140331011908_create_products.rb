class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item_number
      t.string :description

      t.timestamps
    end
  end
end
