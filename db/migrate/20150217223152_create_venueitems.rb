class CreateVenueitems < ActiveRecord::Migration
  def change
    create_table :venueitems do |t|
      t.integer :venue_id
      t.integer :item_id

      t.timestamps null: false
      # The foreign keys for the associations are defined below
  	  t.references :item
  	  t.references :venue
    end
  end
end
