require 'rails_helper'

RSpec.describe "messages/show", type: :view do
  before(:each) do
    @message = assign(:message, Message.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/From/)
    expect(rendered).to match(/Of/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Other Text/)
    expect(rendered).to match(/Boolean/)
    expect(rendered).to match(/Signed/)
  end
end
