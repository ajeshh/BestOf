class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :foursquare_check_id
      t.integer :user_id
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
