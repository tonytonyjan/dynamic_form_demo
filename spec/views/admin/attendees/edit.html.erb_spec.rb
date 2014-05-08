require 'spec_helper'

describe "admin/attendees/edit" do
  before(:each) do
    @admin_attendee = assign(:admin_attendee, stub_model(Admin::Attendee,
      :user => nil,
      :form => nil
    ))
  end

  it "renders the edit admin_attendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", admin_attendee_path(@admin_attendee), "post" do
      assert_select "input#admin_attendee_user[name=?]", "admin_attendee[user]"
      assert_select "input#admin_attendee_form[name=?]", "admin_attendee[form]"
    end
  end
end
