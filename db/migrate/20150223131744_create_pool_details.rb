class CreatePoolDetails < ActiveRecord::Migration
  def change
    create_table :pool_details do |t|
      t.string :axis_assignment
      t.integer :position
      t.integer :value

      t.timestamps null: false
    end
  end
end
