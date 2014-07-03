require 'rails_helper'

RSpec.describe "benefits/edit", :type => :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :name => "MyText",
      :category => nil,
      :copy => "MyText"
    ))
  end

  it "renders the edit benefit form" do
    render

    assert_select "form[action=?][method=?]", benefit_path(@benefit), "post" do

      assert_select "textarea#benefit_name[name=?]", "benefit[name]"

      assert_select "input#benefit_category_id[name=?]", "benefit[category_id]"

      assert_select "textarea#benefit_copy[name=?]", "benefit[copy]"
    end
  end
end
