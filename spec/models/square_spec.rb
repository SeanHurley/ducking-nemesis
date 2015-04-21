require 'rails_helper'

RSpec.describe Square, type: :model do
  describe "validations" do
    it "requires a pool" do
      square = FactoryGirl.build(:square)
      square.pool = nil

      expect(square).to_not be_valid
      expect(square.errors[:pool_id]).to_not be_blank
    end

    it "requires a user" do
      square = FactoryGirl.build(:square)
      square.user = nil

      expect(square).to_not be_valid
      expect(square.errors[:user_id]).to_not be_blank
    end

    it "requires a user in the database" do
      square = FactoryGirl.build(:square)
      square.user_id = 999

      expect(square).to_not be_valid
      p(square.errors)
      expect(square.errors[:user_id]).to_not be_blank
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
      pool = FactoryGirl.create(:pool)
      FactoryGirl.create(:square, :x => 1, :y => 1, :pool => pool)
      new_square = FactoryGirl.build(:square, :x => 1, :y => 1, :pool => pool)

      expect(new_square).to_not be_valid
    end
  end
end
