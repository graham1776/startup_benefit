require 'rails_helper'

RSpec.describe "categories/index", :type => :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :name => "MyText",
        :copy => "MyText"
      ),
      Category.create!(
        :name => "MyText",
        :copy => "MyText"
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
