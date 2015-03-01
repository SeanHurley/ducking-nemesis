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
      expect(pool_detail.error)[:value].to_not be_blank
    end

    it "require position to be less than 10" do
      pool_detail = FactoryGirl.build(:pool_detail, :position => 1000)

      expect(pool_detail).to_not be_valid
      expect(pool_detail.errors[:position]).to_not be_blank
    end

    it "require value and postion to be unique for a given pool" do
      FactoryGirl.create(:pool_detail, :value => 1, :position => 1)
      new_pool_detail = FactoryGirl.build(:square, :value => 1, :positon => 1)

      expect(new_pool_detail).to_not be_valid
    end
 end
end
