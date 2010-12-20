require 'spec_helper'

describe "settings/index.html.slim" do
  before(:each) do
    assign(:settings, [
      stub_model(Setting,
        :var => "Var",
        :value => "MyText"
      ),
      stub_model(Setting,
        :var => "Var",
        :value => "MyText"
      )
    ])
  end

  it "renders a list of settings" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Var".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
