require 'spec_helper'

describe "admin/forms/edit" do
  before(:each) do
    @admin_form = assign(:admin_form, stub_model(Admin::Form,
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit admin_form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_form_path(@admin_form), "post" do
      assert_select "input#admin_form_title[name=?]", "admin_form[title]"
      assert_select "textarea#admin_form_description[name=?]", "admin_form[description]"
    end
  end
end
