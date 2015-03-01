class Pool < ActiveRecord::Base
  has_many :squares, :dependent => :destroy

  validates :cost, :numericality => true, :presence => true

  def filled?
    self.squares.count == 100
  end
end
