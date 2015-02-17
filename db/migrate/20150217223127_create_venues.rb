class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :foursquare_venue_id
      t.string :venue_name
      t.string :venue_type

      t.timestamps null: false
    end
  end
end
