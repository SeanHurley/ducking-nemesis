require 'rails_helper'

RSpec.describe "pool_details/index", type: :view do
  before(:each) do
    assign(:pool_details, [
      PoolDetail.create!(
        :axis_assignment => "Axis Assignment",
        :position => 1,
        :value => 2
      ),
      PoolDetail.create!(
        :axis_assignment => "Axis Assignment",
        :position => 1,
        :value => 2
      )
    ])
  end

  it "renders a list of pool_details" do
    render
    assert_select "tr>td", :text => "Axis Assignment".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
