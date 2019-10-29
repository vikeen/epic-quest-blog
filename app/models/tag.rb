class Tag < ApplicationRecord
    has_many :portfolio_item_tags
    has_many :portfolio_items, through: :portfolio_item_tags
end
