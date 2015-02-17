class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :foursquare_check_id
      t.integer :user_id
      t.integer :venue_id

      t.timestamps null: false

      # The foreign keys for the associations are defined below
  	  t.references :user
  	  t.references :venue
    end
  end
end
