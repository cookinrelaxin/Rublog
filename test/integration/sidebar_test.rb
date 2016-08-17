require 'test_helper'

class SidebarTest < ActionDispatch::IntegrationTest
    test "sidebar links" do
        get admin_overview_path
        assert_template "admin/overview"
        assert_template "layouts/_admin_sidebar"
        assert_select "#sidebar-overview[href=?]", admin_overview_path
        assert_select "#sidebar-posts[href=?]", admin_posts_path
        assert_select "#sidebar-comments[href=?]", admin_comments_path
        assert_select "#sidebar-newsletter[href=?]", admin_newsletter_path
        assert_select "#sidebar-subscribers[href=?]", admin_subscribers_path
    end

    test "overview page contains sidebar" do
        get admin_overview_path
        assert_template "admin/overview"
        assert_template "layouts/_admin_sidebar"
    end

    test "posts page contains sidebar" do
        get admin_posts_path
        assert_template "admin/posts"
        assert_template "layouts/_admin_sidebar"
    end

    test "comments page contains sidebar" do
        get admin_comments_path
        assert_template "admin/comments"
        assert_template "layouts/_admin_sidebar"
    end

    test "newsletter page contains sidebar" do
        get admin_newsletter_path
        assert_template "admin/newsletter"
        assert_template "layouts/_admin_sidebar"
    end

    test "subscribers page contains sidebar" do
        get admin_subscribers_path
        assert_template "admin/subscribers"
        assert_template "layouts/_admin_sidebar"
    end

end
