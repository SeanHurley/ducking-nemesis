require 'rails_helper'

RSpec.describe "pools/edit", type: :view do
  before(:each) do
    @pool = assign(:pool, Pool.create!(
      :name => "MyString",
      :cost => 1
    ))
  end

  it "renders the edit pool form" do
    render

    assert_select "form[action=?][method=?]", pool_path(@pool), "post" do

      assert_select "input#pool_name[name=?]", "pool[name]"

      assert_select "input#pool_cost[name=?]", "pool[cost]"
    end
  end
end
