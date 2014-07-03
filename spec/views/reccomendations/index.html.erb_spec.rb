require 'rails_helper'

RSpec.describe "reccomendations/index", :type => :view do
  before(:each) do
    assign(:reccomendations, [
      Reccomendation.create!(
        :benefit => nil,
        :name => "MyText",
        :copy => "MyText",
        :url => "Url",
        :favicon_url => "Favicon Url"
      ),
      Reccomendation.create!(
        :benefit => nil,
        :name => "MyText",
        :copy => "MyText",
        :url => "Url",
        :favicon_url => "Favicon Url"
      )
    ])
  end

  it "renders a list of reccomendations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Favicon Url".to_s, :count => 2
  end
end
