require 'rails_helper'

RSpec.describe "pools/show", type: :view do
  before(:each) do
    @pool = assign(:pool, Pool.create!(
      :name => "Name",
      :cost => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
