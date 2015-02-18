require 'rails_helper'

RSpec.describe "squares/edit", type: :view do
  before(:each) do
    @square = assign(:square, Square.create!(
      :x => 1,
      :y => 1
    ))
  end

  it "renders the edit square form" do
    render

    assert_select "form[action=?][method=?]", square_path(@square), "post" do

      assert_select "input#square_x[name=?]", "square[x]"

      assert_select "input#square_y[name=?]", "square[y]"
    end
  end
end
