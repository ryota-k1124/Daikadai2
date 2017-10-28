require 'test_helper'

class InstagsControllerTest < ActionController::TestCase
  setup do
    @instag = instags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instag" do
    assert_difference('Instag.count') do
      post :create, instag: { content: @instag.content, image: @instag.image }
    end

    assert_redirected_to instag_path(assigns(:instag))
  end

  test "should show instag" do
    get :show, id: @instag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instag
    assert_response :success
  end

  test "should update instag" do
    patch :update, id: @instag, instag: { content: @instag.content, image: @instag.image }
    assert_redirected_to instag_path(assigns(:instag))
  end

  test "should destroy instag" do
    assert_difference('Instag.count', -1) do
      delete :destroy, id: @instag
    end

    assert_redirected_to instags_path
  end
end
