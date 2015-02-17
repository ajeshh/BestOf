class CreateItembests < ActiveRecord::Migration
  def change
    create_table :itembests do |t|
      t.integer :item_id
      t.integer :best_id

      t.timestamps null: false
    end
  end
end
