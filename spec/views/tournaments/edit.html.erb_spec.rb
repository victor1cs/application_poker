require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  let(:tournament) {
    Tournament.create!(
      name: "MyString",
      buy_in: "9.99",
      award: "9.99",
      position: 1,
      quantity_players: 1,
      link: "MyString",
      online: false,
      platform: "MyString"
    )
  }

  before(:each) do
    assign(:tournament, tournament)
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(tournament), "post" do
      assert_select "input[name=?]", "tournament[name]"

      assert_select "input[name=?]", "tournament[buy_in]"

      assert_select "input[name=?]", "tournament[award]"

      assert_select "input[name=?]", "tournament[position]"

      assert_select "input[name=?]", "tournament[quantity_players]"

      assert_select "input[name=?]", "tournament[link]"

      assert_select "input[name=?]", "tournament[online]"

      assert_select "input[name=?]", "tournament[platform]"
    end
  end
end
