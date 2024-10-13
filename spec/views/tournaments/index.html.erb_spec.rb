require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        name: "Name",
        buy_in: "9.99",
        award: "9.99",
        position: 2,
        quantity_players: 3,
        link: "Link",
        online: false,
        platform: "Platform"
      ),
      Tournament.create!(
        name: "Name",
        buy_in: "9.99",
        award: "9.99",
        position: 2,
        quantity_players: 3,
        link: "Link",
        online: false,
        platform: "Platform"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Link".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Platform".to_s), count: 2
  end
end
