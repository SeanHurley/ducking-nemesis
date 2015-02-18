require 'rails_helper'

RSpec.describe "pools/new", type: :view do
  before(:each) do
    assign(:pool, Pool.new(
      :name => "MyString",
      :cost => 1
    ))
  end

  it "renders new pool form" do
    render

    assert_select "form[action=?][method=?]", pools_path, "post" do

      assert_select "input#pool_name[name=?]", "pool[name]"

      assert_select "input#pool_cost[name=?]", "pool[cost]"
    end
  end
end
