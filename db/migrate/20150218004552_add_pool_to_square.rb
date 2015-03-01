class AddPoolToSquare < ActiveRecord::Migration
  def change
    add_reference :squares, :pool, :index => true
    add_foreign_key :squares, :pools
  end
end
