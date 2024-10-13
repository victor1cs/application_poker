require 'rails_helper'

RSpec.describe "tournaments/new", type: :view do
  before(:each) do
    assign(:tournament, Tournament.new(
      name: "MyString",
      buy_in: "9.99",
      award: "9.99",
      position: 1,
      quantity_players: 1,
      link: "MyString",
      online: false,
      platform: "MyString"
    ))
  end

  it "renders new tournament form" do
    render

    assert_select "form[action=?][method=?]", tournaments_path, "post" do
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
