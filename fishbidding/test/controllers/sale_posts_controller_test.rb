require 'test_helper'

class SalePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_post = sale_posts(:one)
  end

  test "should get index" do
    get sale_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_post_url
    assert_response :success
  end

  test "should create sale_post" do
    assert_difference('SalePost.count') do
      post sale_posts_url, params: { sale_post: { bid: @sale_post.bid, description: @sale_post.description, diet: @sale_post.diet, duration: @sale_post.duration, name: @sale_post.name, size: @sale_post.size } }
    end

    assert_redirected_to sale_post_url(SalePost.last)
  end

  test "should show sale_post" do
    get sale_post_url(@sale_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_post_url(@sale_post)
    assert_response :success
  end

  test "should update sale_post" do
    patch sale_post_url(@sale_post), params: { sale_post: { bid: @sale_post.bid, description: @sale_post.description, diet: @sale_post.diet, duration: @sale_post.duration, name: @sale_post.name, size: @sale_post.size } }
    assert_redirected_to sale_post_url(@sale_post)
  end

  test "should destroy sale_post" do
    assert_difference('SalePost.count', -1) do
      delete sale_post_url(@sale_post)
    end

    assert_redirected_to sale_posts_url
  end
end
