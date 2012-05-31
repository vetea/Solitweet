require 'test_helper'

class InfluencersControllerTest < ActionController::TestCase
  setup do
    @influencer = influencers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:influencers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create influencer" do
    assert_difference('Influencer.count') do
      post :create, influencer: @influencer.attributes
    end

    assert_redirected_to influencer_path(assigns(:influencer))
  end

  test "should show influencer" do
    get :show, id: @influencer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @influencer.to_param
    assert_response :success
  end

  test "should update influencer" do
    put :update, id: @influencer.to_param, influencer: @influencer.attributes
    assert_redirected_to influencer_path(assigns(:influencer))
  end

  test "should destroy influencer" do
    assert_difference('Influencer.count', -1) do
      delete :destroy, id: @influencer.to_param
    end

    assert_redirected_to influencers_path
  end
end
