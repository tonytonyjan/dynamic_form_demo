require 'spec_helper'

describe "admin/attendees/index" do
  before(:each) do
    assign(:admin_attendees, [
      stub_model(Admin::Attendee,
        :user => nil,
        :form => nil
      ),
      stub_model(Admin::Attendee,
        :user => nil,
        :form => nil
      )
    ])
  end

  it "renders a list of admin/attendees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
