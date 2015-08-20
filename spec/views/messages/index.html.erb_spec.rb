require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before(:each) do
    assign(:messages, [
      Message.create!(
        :from => "From",
        :of => "Of",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :message => "MyText",
        :telephoned => false,
        :returned_your_call => false,
        :please_call => false,
        :please_call => false,
        :will_call_again => false,
        :came_to_see_you => false,
        :wants_to_see_you => false,
        :other => false,
        :other_text => "Other Text",
        :boolean => "Boolean",
        :signed => "Signed"
      ),
      Message.create!(
        :from => "From",
        :of => "Of",
        :phone => "Phone",
        :cell_phone => "Cell Phone",
        :message => "MyText",
        :telephoned => false,
        :returned_your_call => false,
        :please_call => false,
        :please_call => false,
        :will_call_again => false,
        :came_to_see_you => false,
        :wants_to_see_you => false,
        :other => false,
        :other_text => "Other Text",
        :boolean => "Boolean",
        :signed => "Signed"
      )
    ])
  end

  it "renders a list of messages" do
    render
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "Of".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Cell Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Other Text".to_s, :count => 2
    assert_select "tr>td", :text => "Boolean".to_s, :count => 2
    assert_select "tr>td", :text => "Signed".to_s, :count => 2
  end
end
