require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "create an article comment" do
    article = articles(:web_dev)
    get article_url(article)
    assert_response :success

    post article_comments_url(article), params: {
      name: "Bob Yukon",
      email: "bob.yukon@gmail.com",
      text: "Blammo!"
    }

    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select ".comment-content .name", "Bob Yukon"
  end
end
