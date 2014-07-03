require 'rails_helper'

RSpec.describe "benefits/show", :type => :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :name => "MyText",
      :category => nil,
      :copy => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
