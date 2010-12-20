require 'spec_helper'

describe "settings/new.html.slim" do
  before(:each) do
    assign(:setting, stub_model(Setting,
      :var => "MyString",
      :value => "MyText"
    ).as_new_record)
  end

  it "renders new setting form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => settings_path, :method => "post" do
      assert_select "input#setting_var", :name => "setting[var]"
      assert_select "textarea#setting_value", :name => "setting[value]"
    end
  end
end
