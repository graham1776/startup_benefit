require 'rails_helper'

RSpec.describe "categories/new", :type => :view do
  before(:each) do
    assign(:category, Category.new(
      :name => "MyText",
      :copy => "MyText"
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "textarea#category_name[name=?]", "category[name]"

      assert_select "textarea#category_copy[name=?]", "category[copy]"
    end
  end
end
