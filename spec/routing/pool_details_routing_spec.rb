require "rails_helper"

RSpec.describe PoolDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pool_details").to route_to("pool_details#index")
    end

    it "routes to #new" do
      expect(:get => "/pool_details/new").to route_to("pool_details#new")
    end

    it "routes to #show" do
      expect(:get => "/pool_details/1").to route_to("pool_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pool_details/1/edit").to route_to("pool_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pool_details").to route_to("pool_details#create")
    end

    it "routes to #update" do
      expect(:put => "/pool_details/1").to route_to("pool_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pool_details/1").to route_to("pool_details#destroy", :id => "1")
    end

  end
end
