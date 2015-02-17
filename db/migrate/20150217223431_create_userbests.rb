class CreateUserbests < ActiveRecord::Migration
  def change
    create_table :userbests do |t|
      t.integer :user_id
      t.integer :best_id

      t.timestamps null: false
    end
  end
end
