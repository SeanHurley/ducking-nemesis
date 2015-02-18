class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.integer :x
      t.integer :y

      t.timestamps null: false
    end
  end
end
