require 'spec_helper'

describe "admin/forms/new" do
  before(:each) do
    assign(:admin_form, stub_model(Admin::Form,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new admin_form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_forms_path, "post" do
      assert_select "input#admin_form_title[name=?]", "admin_form[title]"
      assert_select "textarea#admin_form_description[name=?]", "admin_form[description]"
    end
  end
end
