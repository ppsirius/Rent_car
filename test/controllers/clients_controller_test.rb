require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  test "should get index" do

    get :index
    assert_response :success
  end

  test "should get show" do
    assert_raises(ActiveRecord::RecordNotFound) do 
      get :show, :id => 1 
    end
  end

  test "should get edit" do
    assert_raises(ActiveRecord::RecordNotFound) do 
      get :edit, :id => 1 
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
