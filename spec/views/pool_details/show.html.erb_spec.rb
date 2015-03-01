require 'rails_helper'

RSpec.describe "pool_details/show", type: :view do
  before(:each) do
    @pool_detail = assign(:pool_detail, PoolDetail.create!(
      :axis_assignment => "Axis Assignment",
      :position => 1,
      :value => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Axis Assignment/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
