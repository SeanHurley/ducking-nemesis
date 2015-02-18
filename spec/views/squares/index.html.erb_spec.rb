require 'rails_helper'

RSpec.describe "squares/index", type: :view do
  before(:each) do
    assign(:squares, [
      Square.create!(
        :x => 1,
        :y => 2
      ),
      Square.create!(
        :x => 1,
        :y => 2
      )
    ])
  end

  it "renders a list of squares" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
