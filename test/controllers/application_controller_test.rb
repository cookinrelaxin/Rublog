require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest

    test "should get root" do
        get root_path
        assert_response :success
        assert_select "title", "Home | Zack's Ruby Blog"
    end

    test "should get home" do
        get home_path
        assert_response :success
        assert_select "title", "Home | Zack's Ruby Blog"
    end

    test "should get about" do
        get about_path
        assert_response :success
        assert_select "title", "About | Zack's Ruby Blog"
    end

    test "should get contact" do
        get contact_path
        assert_response :success
        assert_select "title", "Contact | Zack's Ruby Blog"
    end
end
