require 'test_helper'

class GoodiesControllerTest < ActionController::TestCase
  setup do
    @goody = goodies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goodies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goody" do
    assert_difference('Goody.count') do
      post :create, goody: { description: @goody.description }
    end

    assert_redirected_to goody_path(assigns(:goody))
  end

  test "should show goody" do
    get :show, id: @goody
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goody
    assert_response :success
  end

  test "should update goody" do
    put :update, id: @goody, goody: { description: @goody.description }
    assert_redirected_to goody_path(assigns(:goody))
  end

  test "should destroy goody" do
    assert_difference('Goody.count', -1) do
      delete :destroy, id: @goody
    end

    assert_redirected_to goodies_path
  end
end
