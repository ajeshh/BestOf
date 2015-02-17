class CreateVenuebests < ActiveRecord::Migration
  def change
    create_table :venuebests do |t|
      t.integer :venue_id
      t.integer :best_id

      t.timestamps null: false

      # The foreign keys for the associations are defined below
  	  t.references :venue
      t.references :best
    end
  end
end
