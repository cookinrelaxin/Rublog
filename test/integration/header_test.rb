require 'test_helper'

class HeaderTest < ActionDispatch::IntegrationTest
    test "header links" do
        get root_path
        assert_template "application/home"
        assert_template "layouts/_header"
        assert_select "#title[href=?]",        root_path
        assert_select "#nav-home[href=?]",     home_path
        assert_select "#nav-about[href=?]",    about_path
        assert_select "#nav-contact[href=?]",  contact_path
    end
end
