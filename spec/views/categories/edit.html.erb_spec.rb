require 'rails_helper'

RSpec.describe "categories/edit", :type => :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :name => "MyText",
      :copy => "MyText"
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "textarea#category_name[name=?]", "category[name]"

      assert_select "textarea#category_copy[name=?]", "category[copy]"
    end
  end
end
