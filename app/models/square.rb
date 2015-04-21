class Square < ActiveRecord::Base
  belongs_to :pool
  belongs_to :user
  validates_presence_of :pool_id
  validates_presence_of :user_id
  validates :x, :y, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 9 }
  validates_uniqueness_of :pool_id, scope: [:x, :y]
  validate :user_id_valid

  def user_id_valid
    errors.add(:user_id, "is invalid") unless User.exists?(user_id)
  end
end
