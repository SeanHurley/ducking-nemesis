class AddPoolToSquare < ActiveRecord::Migration
  def change
    add_reference :squares, :pool, :index => true
  end
end
