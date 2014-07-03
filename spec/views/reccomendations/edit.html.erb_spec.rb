require 'rails_helper'

RSpec.describe "reccomendations/edit", :type => :view do
  before(:each) do
    @reccomendation = assign(:reccomendation, Reccomendation.create!(
      :benefit => nil,
      :name => "MyText",
      :copy => "MyText",
      :url => "MyString",
      :favicon_url => "MyString"
    ))
  end

  it "renders the edit reccomendation form" do
    render

    assert_select "form[action=?][method=?]", reccomendation_path(@reccomendation), "post" do

      assert_select "input#reccomendation_benefit_id[name=?]", "reccomendation[benefit_id]"

      assert_select "textarea#reccomendation_name[name=?]", "reccomendation[name]"

      assert_select "textarea#reccomendation_copy[name=?]", "reccomendation[copy]"

      assert_select "input#reccomendation_url[name=?]", "reccomendation[url]"

      assert_select "input#reccomendation_favicon_url[name=?]", "reccomendation[favicon_url]"
    end
  end
end
