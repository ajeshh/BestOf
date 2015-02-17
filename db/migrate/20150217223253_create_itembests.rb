class CreateItembests < ActiveRecord::Migration
  def change
    create_table :itembests do |t|
      t.integer :item_id
      t.integer :best_id

      t.timestamps null: false
      # The foreign keys for the associations are defined below
      t.references :item
      t.references :best
    end
  end
end
