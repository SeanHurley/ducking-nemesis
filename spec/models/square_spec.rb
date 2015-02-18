require 'rails_helper'

RSpec.describe Square, type: :model do
  describe "validations" do
    it "requires a pool" do
      square = FactoryGirl.build(:square)
      square.pool = nil

      expect(square).to_not be_valid
      expect(square.errors[:pool_id]).to_not be_blank
    end

    it "requires x to be less than 10" do
      square = FactoryGirl.build(:square, :x => 10000)

      expect(square).to_not be_valid
      expect(square.errors[:x]).to_not be_blank
    end

    it "require y to be less than 10" do
      square = FactoryGirl.build(:square, :y => 1000)

      expect(square).to_not be_valid
      expect(square.errors[:y]).to_not be_blank
    end

    it "require x and y to be unique for a given pool" do
      FactoryGirl.create(:square, :x => 1, :y => 1)
      new_square = FactoryGirl.build(:square, :x => 1, :y => 1)

      expect(new_square).to_not be_valid
    end
  end
end
