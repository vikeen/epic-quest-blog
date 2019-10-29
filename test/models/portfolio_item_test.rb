require 'test_helper'

class PortfolioItemTest < ActiveSupport::TestCase
  test "create a portfolio item" do
    portfolio_item = PortfolioItem.create(
      title: "Babel Admin",
      description: "An admin template design.",
      cover_image_url: "https://johnmrake.com/images/works/work-01.jpg",
    )

    portfolio_item.tags.create([
      { name: :web_design },
      { name: :web_development },
      { name: :mobile_app }
    ])

    assert portfolio_item.title, "Babel Admin"
    assert portfolio_item.description, "An admin template design."
    assert portfolio_item.cover_image_url, "https://johnmrake.com/images/works/work-01.jpg"
    assert portfolio_item.tags.length, 3
    assert Tag.count, 3
    assert portfolio_item.tags[0].name, :web_design
    assert portfolio_item.tags[1].name, :web_development
    assert portfolio_item.tags[2].name, :mobile_app
  end
end
