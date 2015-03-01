class AddUserToSquare < ActiveRecord::Migration
  def change
    add_reference :squares, :user, index: true
  end
end
