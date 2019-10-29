class Comment < ApplicationRecord
  belongs_to :article

  validates :name, presence: true
  validates :text, presence: true
  validates :email, presence: true
end
