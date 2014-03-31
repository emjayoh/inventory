class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :serial
      t.string :location
      t.integer :lot

      t.timestamps
    end
  end
end
