require 'rails_helper'

RSpec.describe PoolDetail, type: :model do
  describe "validations" do
    it "requires a pool" do
      pool_detail = FactoryGirl.build(:pool_detail)
      pool_detail.pool = nil

      expect(pool_detail).to_not be_valid
      expect(pool_detail.errors[:pool_id]).to_not be_blank
    end

    it "requires value to be less than 10" do
      pool_detail = FactoryGirl.build(:pool_detail, :value => 10000)

      expect(pool_detail).to_not be_valid
      expect(pool_detail.errors[:value]).to_not be_blank
    end

    it "requires position to be less than 10" do
      pool_detail = FactoryGirl.build(:pool_detail, :position => 1000)

      expect(pool_detail).to_not be_valid
      expect(pool_detail.errors[:position]).to_not be_blank
    end

    it "requires row and postion to be unique for a given pool" do
      pool = FactoryGirl.create(:pool)
      FactoryGirl.create(:pool_detail, :row => true, :position => 1, :pool => pool)
      new_pool_detail = FactoryGirl.build(:pool_detail, :row => true, :position => 1, :pool => pool)

      expect(new_pool_detail).to_not be_valid
    end

    it "allows position to be the same for a given pool if row is different" do
      pool = FactoryGirl.create(:pool)
      FactoryGirl.create(:pool_detail, :row => true, :position => 1, :pool => pool)
      new_pool_detail = FactoryGirl.build(:pool_detail, :row => false, :position => 1, :pool => pool)

      expect(new_pool_detail).to be_valid
    end
  end
end
