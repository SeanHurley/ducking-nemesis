require 'rails_helper'

RSpec.describe "pool_details/new", type: :view do
  before(:each) do
    assign(:pool_detail, PoolDetail.new(
      :axis_assignment => "MyString",
      :position => 1,
      :value => 1
    ))
  end

  it "renders new pool_detail form" do
    render

    assert_select "form[action=?][method=?]", pool_details_path, "post" do

      assert_select "input#pool_detail_axis_assignment[name=?]", "pool_detail[axis_assignment]"

      assert_select "input#pool_detail_position[name=?]", "pool_detail[position]"

      assert_select "input#pool_detail_value[name=?]", "pool_detail[value]"
    end
  end
end
