require 'spec_helper'

describe "settings/edit.html.slim" do
  before(:each) do
    @setting = assign(:setting, stub_model(Setting,
      :new_record? => false,
      :var => "MyString",
      :value => "MyText"
    ))
  end

  it "renders the edit setting form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => setting_path(@setting), :method => "post" do
      assert_select "input#setting_var", :name => "setting[var]"
      assert_select "textarea#setting_value", :name => "setting[value]"
    end
  end
end
