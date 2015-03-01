require 'rails_helper'

RSpec.describe "PoolDetails", type: :request do
  describe "GET /pool_details" do
    it "works! (now write some real specs)" do
      get pool_details_path
      expect(response).to have_http_status(200)
    end
  end
end
