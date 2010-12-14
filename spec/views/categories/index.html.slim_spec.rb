require 'spec_helper'

describe "categories/index.html.slim" do
  before(:each) do
    assign(:categories, [
      stub_model(Category,
        :name => "Name",
        :kind => "Kind"
      ),
      stub_model(Category,
        :name => "Name",
        :kind => "Kind"
      )
    ])
  end

  it "renders a list of categories" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
  end
end
