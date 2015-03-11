require 'rails_helper'

RSpec.describe Pool, type: :model do
  describe "filled?" do
    it "is true if all squares are taken" do
      pool = FactoryGirl.create(:pool)

      10.times do |x|
        10.times do |y|
          FactoryGirl.create(:square, :x => x, :y => y, :pool => pool)
        end
      end

      expect(pool).to be_filled
    end

    it "is false otherwise" do
      pool = FactoryGirl.create(:pool)
      FactoryGirl.create(:square, :x => 0, :y => 0, :pool => pool)

      expect(pool).to_not be_filled
    end
  end

  describe "validations" do
    context "cost" do
      it "must be a number" do
        pool = Pool.new(:cost => "nonumber")

        expect(pool).to_not be_valid
        expect(pool.errors[:cost]).to be_present
      end

      it "is required" do
        pool = Pool.new(:cost => nil)

        expect(pool).to_not be_valid
        expect(pool.errors[:cost]).to be_present
      end
    end
  end

  describe "finalize!" do
    it "assigns pool details for each row and column" do
      pool = FactoryGirl.create(:pool)

      pool.finalize!

      expect(pool.pool_details.count).to eq(20)
    end
  end
end
