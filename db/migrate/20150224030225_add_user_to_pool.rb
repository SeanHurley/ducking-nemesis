class AddUserToPool < ActiveRecord::Migration
  def change
    add_reference :pools, :user, index: true
  end
end
