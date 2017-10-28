require 'test_helper'

class InstaControllerTest < ActionController::TestCase
  setup do
    @instagrams = insta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instagrams" do
    assert_difference('Instagram.count') do
      post :create, instagrams: { content: @instagrams.content, image: @instagrams.image }
    end

    assert_redirected_to instagrams_path(assigns(:instagrams))
  end

  test "should show instagrams" do
    get :show, id: @instagrams
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instagrams
    assert_response :success
  end

  test "should update instagrams" do
    patch :update, id: @instagrams, instagrams: { content: @instagrams.content, image: @instagrams.image }
    assert_redirected_to instagrams_path(assigns(:instagrams))
  end

  test "should destroy instagrams" do
    assert_difference('Instagram.count', -1) do
      delete :destroy, id: @instagrams
    end

    assert_redirected_to insta_path
  end
end
