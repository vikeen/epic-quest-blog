require 'test_helper'

class PortfolioItemTest < ActiveSupport::TestCase
  test "create a portfolio item" do
    portfolio_item = PortfolioItem.create(
      title: "Babel Admin",
      description: "An admin template design.",
      cover_image_url: "https://johnmrake.com/images/works/work-01.jpg",
      # tags: [:web_design]
    )

    assert portfolio_item.title, "Babel Admin"
    assert portfolio_item.description, "An admin template design."
    assert portfolio_item.cover_image_url, "https://johnmrake.com/images/works/work-01.jpg"
    # assert portfolio_item.tags, [:web_design]
  end
end
