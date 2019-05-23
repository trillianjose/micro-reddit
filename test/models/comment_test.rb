require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @comment = Comment.new(body: "Go ahead", user_id: "1", post_id: "1")
  end
  test "should be valid" do
    assert @comment.valid?
  end

  test "user_id should not be nill and is valid" do
    @comment.user_id=""
    assert_not @comment.valid?
  end
  test "post_id should not be nill and is valid" do
    @comment.post_id=""
    assert_not @comment.valid?
  end

  test "should be less than 255" do
    @comment.body="a"*285
    assert_not @comment.valid?
  end
end
