require 'test_helper'

class SisterControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get songs" do
    get :songs
    assert_response :success
  end

  test "should get images" do
    get :images
    assert_response :success
  end

  test "should get movies" do
    get :movies
    assert_response :success
  end

end
