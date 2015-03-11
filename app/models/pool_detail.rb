class PoolDetail < ActiveRecord::Base
  belongs_to :pool
  validates_presence_of :pool_id
  validates_inclusion_of :row, :in => [false, true]
  validates :position, :value, :numericality => {:greater_than_or_equal_to => 0, :less_than_or_equal_to =>9}
  validates_uniqueness_of :pool_id, scope: [:row, :position]
end
