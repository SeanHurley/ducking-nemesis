require 'rails_helper'

RSpec.describe "pool_details/edit", type: :view do
  before(:each) do
    @pool_detail = assign(:pool_detail, PoolDetail.create!(
      :axis_assignment => "MyString",
      :position => 1,
      :value => 1
    ))
  end

  it "renders the edit pool_detail form" do
    render

    assert_select "form[action=?][method=?]", pool_detail_path(@pool_detail), "post" do

      assert_select "input#pool_detail_axis_assignment[name=?]", "pool_detail[axis_assignment]"

      assert_select "input#pool_detail_position[name=?]", "pool_detail[position]"

      assert_select "input#pool_detail_value[name=?]", "pool_detail[value]"
    end
  end
end
