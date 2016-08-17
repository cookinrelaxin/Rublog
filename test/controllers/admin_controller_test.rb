require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
    test "should get overview" do
        get admin_overview_url
        assert_response :success
        assert_select "title", "Overview | Admin | Zack's Ruby Blog"
    end

    test "should get posts" do
        get admin_posts_url
        assert_response :success
        assert_select "title", "Posts | Admin | Zack's Ruby Blog"
    end

    test "should get pages" do
        get admin_pages_url
        assert_response :success
        assert_select "title", "Pages | Admin | Zack's Ruby Blog"
    end

    test "should get comments" do
        get admin_comments_url
        assert_response :success
        assert_select "title", "Comments | Admin | Zack's Ruby Blog"
    end

    test "should get newsletter" do
        get admin_newsletter_url
        assert_response :success
        assert_select "title", "Newsletter | Admin | Zack's Ruby Blog"
    end

    test "should get subscribers" do
        get admin_subscribers_url
        assert_response :success
        assert_select "title", "Subscribers | Admin | Zack's Ruby Blog"
    end

end
