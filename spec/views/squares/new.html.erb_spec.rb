require 'rails_helper'

RSpec.describe "squares/new", type: :view do
  before(:each) do
    assign(:square, Square.new(
      :x => 1,
      :y => 1
    ))
  end

  it "renders new square form" do
    render

    assert_select "form[action=?][method=?]", squares_path, "post" do

      assert_select "input#square_x[name=?]", "square[x]"

      assert_select "input#square_y[name=?]", "square[y]"
    end
  end
end
