module PortfolioHelper
    def get_portfolio_item_tag_css(portfolio_item)
        return portfolio_item.tags.map{ |tag| tag.key }.join(" ")
    end
end
