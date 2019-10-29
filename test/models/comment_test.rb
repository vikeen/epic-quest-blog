require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # create_table "comments", force: :cascade do |t|
  #   t.string "commenter"
  #   t.text "body"
  #   t.bigint "article_id", null: false
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  #   t.string "email"
  #   t.index ["article_id"], name: "index_comments_on_article_id"
  # end

  test "not save without commenter" do
    comment = Comment.new(
      email: "bob.yukon@gmail.com",
      body: "This is a great article!",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without name"
  end

  test "not save without body" do
    comment = Comment.new(
      commenter: 'Bob Yukon',
      email: "bob.yukon@gmail.com",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without message"
  end

  test "not save without email" do
    comment = Comment.new(
      commenter: 'Bob Yukon',
      body: "This is a great article!",
      article: articles(:web_dev)
    )
    assert_not comment.save, "Should not save comment without email"
  end

  test "not save without article" do
    comment = Comment.new(
      commenter: 'Bob Yukon',
      email: "bob.yukon@gmail.com",
      body: "This is a great article!",
    )
    assert_not comment.save, "Should not save comment without article"
  end
end
