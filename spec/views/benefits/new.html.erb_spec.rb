require 'rails_helper'

RSpec.describe "benefits/new", :type => :view do
  before(:each) do
    assign(:benefit, Benefit.new(
      :name => "MyText",
      :category => nil,
      :copy => "MyText"
    ))
  end

  it "renders new benefit form" do
    render

    assert_select "form[action=?][method=?]", benefits_path, "post" do

      assert_select "textarea#benefit_name[name=?]", "benefit[name]"

      assert_select "input#benefit_category_id[name=?]", "benefit[category_id]"

      assert_select "textarea#benefit_copy[name=?]", "benefit[copy]"
    end
  end
end
