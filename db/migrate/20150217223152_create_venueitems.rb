class CreateVenueitems < ActiveRecord::Migration
  def change
    create_table :venueitems do |t|
      t.integer :venue_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
