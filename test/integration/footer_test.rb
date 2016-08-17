require 'test_helper'

class FooterTest < ActionDispatch::IntegrationTest
    test "footer links" do
        get root_path
        assert_template "application/home"

        assert_select "#footer-title[href=?]",   root_path
        assert_select "#footer-rails[href=?]",   "http://rubyonrails.org"
        assert_select "#footer-author[href=?]",  about_path

        assert_select "#footer-home[href=?]",    root_path
        assert_select "#footer-about[href=?]",   about_path
        assert_select "#footer-contact[href=?]", contact_path
    end
end
