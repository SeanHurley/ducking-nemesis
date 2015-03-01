class PoolDetail < ActiveRecord::Base
  belongs_to :pool
  validates_presence_of :pool_id
  validates :position, :value, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to =>9}
  #not sure if the below will work since it might need to be broken out separately... look up functions
  validates_uniqueness_of :pool_id, scope: [:axis_assignment, :position,:value]
end
