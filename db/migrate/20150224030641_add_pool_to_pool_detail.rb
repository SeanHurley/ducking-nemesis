class AddPoolToPoolDetail < ActiveRecord::Migration
  def change
    add_reference :pool_details, :pool, index: true
    add_foreign_key :pool_details, :pools
  end
end
