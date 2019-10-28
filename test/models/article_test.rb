require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "create a article" do
    article = Article.create(
      title: "My Article title",
      text: "Lorem ipsum",
    )

    article.tags.create([
      { name: :web_development },
      { name: :life_quest }
    ])

    assert article.title, "My Article title"
    assert article.text, "Lorem ipsum"
    assert article.tags.length, 2
    assert Tag.count, 2
    assert article.tags[0].name, :web_development
    assert article.tags[1].name, :life_quest
  end
end
