require 'test_helper'

class GiftGivensControllerTest < ActionController::TestCase
  setup do
    @gift_given = gift_givens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gift_givens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gift_given" do
    assert_difference('GiftGiven.count') do
      post :create, gift_given: { gift_name: @gift_given.gift_name }
    end

    assert_redirected_to gift_given_path(assigns(:gift_given))
  end

  test "should show gift_given" do
    get :show, id: @gift_given
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gift_given
    assert_response :success
  end

  test "should update gift_given" do
    patch :update, id: @gift_given, gift_given: { gift_name: @gift_given.gift_name }
    assert_redirected_to gift_given_path(assigns(:gift_given))
  end

  test "should destroy gift_given" do
    assert_difference('GiftGiven.count', -1) do
      delete :destroy, id: @gift_given
    end

    assert_redirected_to gift_givens_path
  end
end
