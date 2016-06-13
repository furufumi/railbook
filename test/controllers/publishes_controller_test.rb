require 'test_helper'

class PublishesControllerTest < ActionController::TestCase
  setup do
    @publish = publishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publish" do
    assert_difference('Publish.count') do
      post :create, publish: { address: @publish.address, publishname: @publish.publishname }
    end

    assert_redirected_to publish_path(assigns(:publish))
  end

  test "should show publish" do
    get :show, id: @publish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publish
    assert_response :success
  end

  test "should update publish" do
    patch :update, id: @publish, publish: { address: @publish.address, publishname: @publish.publishname }
    assert_redirected_to publish_path(assigns(:publish))
  end

  test "should destroy publish" do
    assert_difference('Publish.count', -1) do
      delete :destroy, id: @publish
    end

    assert_redirected_to publishes_path
  end
end
