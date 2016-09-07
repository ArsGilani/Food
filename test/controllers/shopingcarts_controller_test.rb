require 'test_helper'

class ShopingcartsControllerTest < ActionController::TestCase
  setup do
    @shopingcart = shopingcarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopingcarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopingcart" do
    assert_difference('Shopingcart.count') do
      post :create, shopingcart: { counter: @shopingcart.counter }
    end

    assert_redirected_to shopingcart_path(assigns(:shopingcart))
  end

  test "should show shopingcart" do
    get :show, id: @shopingcart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopingcart
    assert_response :success
  end

  test "should update shopingcart" do
    patch :update, id: @shopingcart, shopingcart: { counter: @shopingcart.counter }
    assert_redirected_to shopingcart_path(assigns(:shopingcart))
  end

  test "should destroy shopingcart" do
    assert_difference('Shopingcart.count', -1) do
      delete :destroy, id: @shopingcart
    end

    assert_redirected_to shopingcarts_path
  end
end
