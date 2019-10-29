class Article < ApplicationRecord
    has_many :article_tags
    has_many :tags, through: :article_tags
    has_many :comments, dependent: :destroy
    
    validates :title, presence: true,
                      length: { minimum: 5 }

    validates :text, presence: true

    rails_admin do
        list do 
            field :title
            field :text
            field :tags
            field :created_at
            field :updated_at
        end  

        configure :article_tags do
            label 'Tags'
        end
    end
end
