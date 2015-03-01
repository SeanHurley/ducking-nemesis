class CreatePoolDetails < ActiveRecord::Migration
  def change
    create_table :pool_details do |t|
      t.boolean :row
      t.integer :position
      t.integer :value
      t.references :pool, :index => true

      t.timestamps null: false
    end
  end
end
