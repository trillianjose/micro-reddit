require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @post = Post.new(title: "First post", body: "need to kill jose", user_id: "1")
  end
  test "should be valid" do
    assert @post.valid?
  end
  test "should be valid" do
    @post.title="  "
    assert_not @post.valid?
  end
  test "should be valid" do
    @post.body="  "
    assert_not @post.valid?
  end

  test "should be valid" do
    @post.user_id="  "
    assert_not @post.valid?
  end

  test "should be valid" do
    @post.title = "a" * 85
    assert_not @post.valid?
  end
  test "should be valid" do
    @post.body = "a" * 285
    assert_not @post.valid?
  end
end
