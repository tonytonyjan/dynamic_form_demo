require 'spec_helper'

describe "admin/attendees/show" do
  before(:each) do
    @admin_attendee = assign(:admin_attendee, stub_model(Admin::Attendee,
      :user => nil,
      :form => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
  end
end
