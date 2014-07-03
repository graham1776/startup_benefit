require 'rails_helper'

RSpec.describe "reccomendations/show", :type => :view do
  before(:each) do
    @reccomendation = assign(:reccomendation, Reccomendation.create!(
      :benefit => nil,
      :name => "MyText",
      :copy => "MyText",
      :url => "Url",
      :favicon_url => "Favicon Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Favicon Url/)
  end
end
