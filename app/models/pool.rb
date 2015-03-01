class Pool < ActiveRecord::Base
  has_many :squares, :dependent => :destroy
  has_many :pooldetails, :dependent => :destroy

  def filled?
    self.squares.count == 100
  end
end
