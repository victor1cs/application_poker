require 'rails_helper'

RSpec.describe "tournaments/show", type: :view do
  before(:each) do
    assign(:tournament, Tournament.create!(
      name: "Name",
      buy_in: "9.99",
      award: "9.99",
      position: 2,
      quantity_players: 3,
      link: "Link",
      online: false,
      platform: "Platform"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Platform/)
  end
end
