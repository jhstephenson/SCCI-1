require 'rails_helper'

RSpec.describe "messages/new", type: :view do
  before(:each) do
    assign(:message, Message.new(
      :from => "MyString",
      :of => "MyString",
      :phone => "MyString",
      :cell_phone => "MyString",
      :message => "MyText",
      :telephoned => false,
      :returned_your_call => false,
      :please_call => false,
      :please_call => false,
      :will_call_again => false,
      :came_to_see_you => false,
      :wants_to_see_you => false,
      :other => false,
      :other_text => "MyString",
      :boolean => "MyString",
      :signed => "MyString"
    ))
  end

  it "renders new message form" do
    render

    assert_select "form[action=?][method=?]", messages_path, "post" do

      assert_select "input#message_from[name=?]", "message[from]"

      assert_select "input#message_of[name=?]", "message[of]"

      assert_select "input#message_phone[name=?]", "message[phone]"

      assert_select "input#message_cell_phone[name=?]", "message[cell_phone]"

      assert_select "textarea#message_message[name=?]", "message[message]"

      assert_select "input#message_telephoned[name=?]", "message[telephoned]"

      assert_select "input#message_returned_your_call[name=?]", "message[returned_your_call]"

      assert_select "input#message_please_call[name=?]", "message[please_call]"

      assert_select "input#message_please_call[name=?]", "message[please_call]"

      assert_select "input#message_will_call_again[name=?]", "message[will_call_again]"

      assert_select "input#message_came_to_see_you[name=?]", "message[came_to_see_you]"

      assert_select "input#message_wants_to_see_you[name=?]", "message[wants_to_see_you]"

      assert_select "input#message_other[name=?]", "message[other]"

      assert_select "input#message_other_text[name=?]", "message[other_text]"

      assert_select "input#message_boolean[name=?]", "message[boolean]"

      assert_select "input#message_signed[name=?]", "message[signed]"
    end
  end
end
