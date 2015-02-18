require 'rails_helper'

RSpec.describe "pools/index", type: :view do
  before(:each) do
    assign(:pools, [
      Pool.create!(
        :name => "Name",
        :cost => 1
      ),
      Pool.create!(
        :name => "Name",
        :cost => 1
      )
    ])
  end

  it "renders a list of pools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
