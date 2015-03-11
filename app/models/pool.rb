class Pool < ActiveRecord::Base
  has_many :squares, :dependent => :destroy
  has_many :pool_details, :dependent => :destroy

  validates :cost, :numericality => true, :presence => true

  def filled?
    self.squares.count == 100
  end

  def finalize!
    [false, true].each do |row|
      (0..9).to_a.shuffle.each_with_index do |position, value|
        PoolDetail.create!(:position => position, :value => value, :row => row, :pool => self)
      end
    end
  end
end
