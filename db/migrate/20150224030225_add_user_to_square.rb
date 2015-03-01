class AddUserToSquare < ActiveRecord::Migration
  def change
    add_reference :squares, :user, index: true
    add_foreign_key :squares, :users
  end
end
