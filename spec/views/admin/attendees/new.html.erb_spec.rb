require 'spec_helper'

describe "admin/attendees/new" do
  before(:each) do
    assign(:admin_attendee, stub_model(Admin::Attendee,
      :user => nil,
      :form => nil
    ).as_new_record)
  end

  it "renders new admin_attendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_attendees_path, "post" do
      assert_select "input#admin_attendee_user[name=?]", "admin_attendee[user]"
      assert_select "input#admin_attendee_form[name=?]", "admin_attendee[form]"
    end
  end
end
