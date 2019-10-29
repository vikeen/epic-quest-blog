require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "not save without name" do
    comment = Comment.new(
      email: "bob.yukon@gmail.com",
      text: "This is a great article!",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without name"
  end

  test "not save without text" do
    comment = Comment.new(
      name: 'Bob Yukon',
      email: "bob.yukon@gmail.com",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without text"
  end

  test "not save without email" do
    comment = Comment.new(
      name: 'Bob Yukon',
      text: "This is a great article!",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without email"
  end

  test "not save without article" do
    comment = Comment.new(
      name: 'Bob Yukon',
      email: "bob.yukon@gmail.com",
      text: "This is a great article!",
    )
    assert_not comment.save, "Should not save comment without article"
  end
end
