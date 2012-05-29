require 'test_helper'

class SentMessagesControllerTest < ActionController::TestCase
  setup do
    @sent_message = sent_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sent_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sent_message" do
    assert_difference('SentMessage.count') do
      post :create, sent_message: @sent_message.attributes
    end

    assert_redirected_to sent_message_path(assigns(:sent_message))
  end

  test "should show sent_message" do
    get :show, id: @sent_message.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sent_message.to_param
    assert_response :success
  end

  test "should update sent_message" do
    put :update, id: @sent_message.to_param, sent_message: @sent_message.attributes
    assert_redirected_to sent_message_path(assigns(:sent_message))
  end

  test "should destroy sent_message" do
    assert_difference('SentMessage.count', -1) do
      delete :destroy, id: @sent_message.to_param
    end

    assert_redirected_to sent_messages_path
  end
end
