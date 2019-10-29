class PortfolioItem < ApplicationRecord
    has_many :portfolio_item_tags
    has_many :tags, through: :portfolio_item_tags
end
