require 'spec_helper'

describe "categories/edit.html.slim" do
  before(:each) do
    @category = assign(:category, stub_model(Category,
      :new_record? => false,
      :name => "MyString",
      :kind => "MyString"
    ))
  end

  it "renders the edit category form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => category_path(@category), :method => "post" do
      assert_select "input#category_name", :name => "category[name]"
      assert_select "input#category_kind", :name => "category[kind]"
    end
  end
end
