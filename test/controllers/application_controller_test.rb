require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest

    test "should get root" do
        get root_path
        assert_response :success
    end

    test "should get home" do
        get home_path
        assert_response :success
    end

    test "should get about" do
        get about_path
        assert_response :success
    end

    test "should get contact" do
        get about_path
        assert_response :success
    end
end
