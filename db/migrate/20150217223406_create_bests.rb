class CreateBests < ActiveRecord::Migration
  def change
    create_table :bests do |t|
      t.boolean :restaurant
      t.boolean :neighborhood
      t.boolean :city
      t.boolean :ever

      t.timestamps null: false
    end
  end
end
