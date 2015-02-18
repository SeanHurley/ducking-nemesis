class Square < ActiveRecord::Base
  belongs_to :pool
  validates_presence_of :pool_id
  validates :x, :y, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9 }
  validates_uniqueness_of :pool_id, scope: [:x, :y]
end
