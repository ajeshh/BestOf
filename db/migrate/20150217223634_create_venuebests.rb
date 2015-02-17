class CreateVenuebests < ActiveRecord::Migration
  def change
    create_table :venuebests do |t|
      t.integer :venue_id
      t.integer :best_id

      t.timestamps null: false
    end
  end
end
