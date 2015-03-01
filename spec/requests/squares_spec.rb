require 'rails_helper'

RSpec.describe "Squares", type: :request do
  describe "GET /squares" do
    it "works! (now write some real specs)" do
      get pool_squares_path(FactoryGirl.create(:pool))
      expect(response).to have_http_status(200)
    end
  end
end
